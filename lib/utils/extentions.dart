import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

extension text on String {
  appTextStyle(
      {required double size,
      required FontWeight fontWeight,
      FontStyle? fontStyle,
      Color? color,
      int? maxLine}) {
    return Text(
      this,
      style: GoogleFonts.roboto(
          color: color ?? Colors.black,
          fontSize: size,
          fontWeight: fontWeight,
          fontStyle: fontStyle),
      maxLines: maxLine ?? 1,
      overflow: TextOverflow.ellipsis,
      // textAlign: TextAlign.center,
    );
  }
}

extension Size on double {
  addHSpace() {
    return SizedBox(
      height: this,
    );
  }

  addWSpace() {
    return SizedBox(
      width: this,
    );
  }
}

showAppSnackBar(String tittle) {
  return Get.showSnackbar(GetSnackBar(
    backgroundGradient: LinearGradient(colors: [Colors.green, Colors.blue]),
    snackStyle: SnackStyle.FLOATING,
    padding: EdgeInsets.all(15.0),
    margin: EdgeInsets.all(30.0),
    borderRadius: 20,
    message: tittle,
    duration: const Duration(seconds: 3),
  ));
}
