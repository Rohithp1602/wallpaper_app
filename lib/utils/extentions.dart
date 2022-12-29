import 'package:flutter/material.dart';
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
