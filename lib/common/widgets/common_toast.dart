import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

void commonToast(String message, {String status = "default"}) {
  Fluttertoast.cancel();

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
      backgroundColor = Colors.grey[700]!;
  }

  Fluttertoast.showToast(
    msg: message,
    toastLength: Toast.LENGTH_LONG,
    gravity: ToastGravity.BOTTOM,
    timeInSecForIosWeb: 6,
    backgroundColor: backgroundColor,
    textColor: Colors.white,
    fontSize: 16.0,
  );
}
