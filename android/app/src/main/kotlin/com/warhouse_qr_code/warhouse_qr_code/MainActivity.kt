package com.warhouse_qr_code.warhouse_qr_code



import android.view.KeyEvent

import com.rscja.deviceapi.RFIDWithUHFUART

import io.flutter.embedding.android.FlutterActivity

import io.flutter.embedding.engine.FlutterEngine

import io.flutter.plugin.common.MethodChannel



class MainActivity : FlutterActivity() {

    private val CHANNEL = "com.uzbek.uhf/scanner"

    private var mReader: RFIDWithUHFUART? = null

    private var isScanning = false



    override fun configureFlutterEngine(flutterEngine: FlutterEngine) {

        super.configureFlutterEngine(flutterEngine)

        initReader()



        MethodChannel(flutterEngine.dartExecutor.binaryMessenger, CHANNEL).setMethodCallHandler { call, result ->

            when (call.method) {

                "startScan" -> {

                    val status = startInventory()

                    if (status) result.success("Started") else result.error("ERR", "Start fail", null)

                }

                "stopScan" -> {

                    stopInventory()

                    result.success("Stopped")

                }

                "setPower" -> {

                    val power = call.argument<Int>("power") ?: 15

                    mReader?.setPower(power)

                    result.success(true)

                }

                else -> result.notImplemented()

            }

        }

    }



    private fun initReader() {

        try {

            mReader = RFIDWithUHFUART.getInstance()

            mReader?.init()

        } catch (e: Exception) {

            e.printStackTrace()

        }

    }



    override fun onKeyDown(keyCode: Int, event: KeyEvent?): Boolean {

// Bu yerda keyCode kelsa, demak tugma ishlayapti

        if (keyCode == 139 || keyCode == 280 || keyCode == 293) {

            if (event?.repeatCount == 0) {

                if (!isScanning) {

                    startInventory()

                    notifyFlutter("onHardwareBtnClick", true)

                } else {

                    stopInventory()

                    notifyFlutter("onHardwareBtnClick", false)

                }

            }

            return true

        }

        return super.onKeyDown(keyCode, event)

    }



    private fun startInventory(): Boolean {

        if (mReader == null) initReader()



        mReader?.setPower(15)

        val success = mReader?.startInventoryTag() ?: false



        if (success) {

            isScanning = true

            Thread {

                while (isScanning) {

                    val info = mReader?.readTagFromBuffer()

                    if (info != null) {

// MUHIM: Ba'zi SDKlarda epc o'rniga getEPC() bo'ladi

                        val epc = info.epc ?: ""

                        val rssi = info.rssi ?: "-100"



// RSSI filterini qo'shib qo'yamiz (Ishlagan koddagi kabi)

                        if (rssi.toDoubleOrNull() ?: -100.0 > -70.0) {

                            runOnUiThread {

                                notifyFlutter("onTagRead", epc)

                            }

                        }

                    }

                    Thread.sleep(15)

                }

            }.start()

        }

        return success

    }



    private fun stopInventory() {

        isScanning = false

        mReader?.stopInventory()

    }



    private fun notifyFlutter(method: String, arguments: Any?) {

        flutterEngine?.dartExecutor?.binaryMessenger?.let {

            MethodChannel(it, CHANNEL).invokeMethod(method, arguments)

        }

    }



    override fun onDestroy() {

        stopInventory()

        mReader?.free()

        super.onDestroy()

    }

}