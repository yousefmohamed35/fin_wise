import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

abstract class TextStyles {
  static TextStyle paragraph({required Color color, double? fontSize}) {
    return GoogleFonts.poppins(
      color: color,
      fontSize: fontSize ?? 14,
    );
  }
  static TextStyle title({required Color color, double? fontSize}) {
    return GoogleFonts.poppins(
      color: color,
      fontSize: fontSize ?? 20,
      fontWeight: FontWeight.w600
    );
  }
  static TextStyle subTitle({required Color color, double? fontSize}) {
    return GoogleFonts.poppins(
      color: color,
      fontSize: fontSize ?? 16,
      fontWeight: FontWeight.w500
    );
  }
  
}
