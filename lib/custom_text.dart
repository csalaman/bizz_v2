import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomText {
  static _textStyleOptions(
      double fontSize, FontWeight fontWeight, Color fontColor) {
    return GoogleFonts.roboto(
        fontSize: fontSize, fontWeight: fontWeight, color: fontColor);
  }

  static regularTextWidget(String text, double fontSize) {
    return Text(
      text,
      style:
          _textStyleOptions(fontSize, FontWeight.normal, Colors.grey.shade700),
    );
  }

  static primaryTextWidget(String text) {
    return Text(
      text,
      style: _textStyleOptions(26, FontWeight.w600, Colors.grey.shade700),
    );
    ;
  }

  static secondaryTextWidget(String text) {
    return Text(
      text,
      style: _textStyleOptions(20, FontWeight.w400, Colors.grey.shade400),
    );
  }

  static subOneTextWidget(String text) {
    return Text(
      text,
      style: _textStyleOptions(16, FontWeight.w400, Colors.grey.shade400),
    );
  }

  static subTwoTextWidget(String text) {
    return Text(
      text,
      style: _textStyleOptions(14, FontWeight.w400, Colors.grey.shade400),
    );
  }

  static subTextWidget(String text, double fontSize) {
    return Text(
      text,
      style: _textStyleOptions(fontSize, FontWeight.w400, Colors.grey.shade400),
    );
  }
}
