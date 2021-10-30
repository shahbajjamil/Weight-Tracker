import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

toastBuild(
  String msg,
) {
  Fluttertoast.showToast(
      msg: msg,
      toastLength: Toast.LENGTH_LONG,
      gravity: ToastGravity.BOTTOM,
      timeInSecForIosWeb: 1,
      backgroundColor: Colors.grey.withOpacity(.8),
      textColor: Colors.black,
      fontSize: 16.0);
}
