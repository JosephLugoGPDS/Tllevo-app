import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:tllevo/core/theme/colors_app.dart';

class TextStyleApp {
  static TextStyle h4() => GoogleFonts.poppins(
    color: textColor,
    fontSize: 28,
    height: 1.215,
  );
  static TextStyle h3() => GoogleFonts.poppins(
    color: textColor,
    fontSize: 24,
    height: 1.3,
  );
  static TextStyle h2() => GoogleFonts.poppins(
    color: textColor,
    fontSize: 20,
    height: 4,
  );
  static TextStyle h2w() => GoogleFonts.poppins(
    color: whiteColor,
    fontSize: 20,
    height: 4,
  );
  static TextStyle h1() => GoogleFonts.poppins(
    color: textColor,
    fontSize: 18,
    height: 2.5,
  );
  static TextStyle b1() => GoogleFonts.poppins(
    color: primaryColor, //Envio Gratis
    fontSize: 16,
    height: 1.3,
  );
  static TextStyle b2() => GoogleFonts.poppins(
    color: textColor, // Frexer description
    fontSize: 14,
    height: 4,
  );
  static TextStyle sb2() => GoogleFonts.poppins(
    color: textColor, //categories
    fontSize: 14,
    height: 1.3,
  );
}