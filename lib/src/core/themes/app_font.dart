import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:toegasmo_app/src/core/themes/app_palette.dart';

class AppFont {
  // Body
  static TextStyle montserratBody = GoogleFonts.montserrat(
      fontSize: 14, fontWeight: FontWeight.w400, color: AppPalette.black);

  static TextStyle montserratBodySmall = montserratBody.copyWith(fontSize: 12);
  static TextStyle montserratBodyBig = montserratBody.copyWith(fontSize: 16);
  // label
  static TextStyle montserratLabelBig =
      montserratBody.copyWith(fontWeight: FontWeight.w500);
  static TextStyle montserratLabel = montserratLabelBig.copyWith(fontSize: 12);
  static TextStyle montserratLabelSmall =
      montserratLabelBig.copyWith(fontSize: 11);
  // label
  static TextStyle montserratTitleBig =
      montserratLabelBig.copyWith(fontSize: 22);
  static TextStyle montserratTitle = montserratLabelBig.copyWith(fontSize: 16);
  static TextStyle montserratTitleSmall =
      montserratLabelBig.copyWith(fontSize: 14);
  // headline
  static TextStyle montserratHeadlineBig =
      montserratBody.copyWith(fontSize: 32);
  static TextStyle montserratHeadline = montserratBody.copyWith(fontSize: 28);
  static TextStyle montserratHeadlineSmall =
      montserratBody.copyWith(fontSize: 24);
  // display
  static TextStyle montserratDisplayBig = montserratBody.copyWith(fontSize: 57);
  static TextStyle montserratDisplay = montserratBody.copyWith(fontSize: 45);
  static TextStyle montserratDisplaySmall =
      montserratBody.copyWith(fontSize: 34);
}
