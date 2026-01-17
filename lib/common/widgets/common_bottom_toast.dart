import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

void commonToast(String message, {String status = "default"}) {
  Fluttertoast.cancel(); // Avvalgi toastni yopish

  // Ranglarni belgilash
  Color backgroundColor;
  switch (status) {
    case "success":
      backgroundColor = Colors.green;
      break;
    case "error":
      backgroundColor = Colors.red;
      break;
    case "warning":
      backgroundColor = Colors.orange;
      break;
    default:
      backgroundColor = Colors.grey[700]!; // Default kulrang fon
  }

  // Toastni ko'rsatilish vaqtini uzaytirish
  Fluttertoast.showToast(
    msg: message,
    toastLength: Toast.LENGTH_LONG,  // Uzoqroq ko'rsatish
    gravity: ToastGravity.BOTTOM,
    timeInSecForIosWeb: 6,  // iOS va Web uchun ko'rsatilish davomiyligi
    backgroundColor: backgroundColor,
    textColor: Colors.white,
    fontSize: 16.0,
  );
}
