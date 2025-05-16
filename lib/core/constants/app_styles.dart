import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'app_colors.dart';

class AppStyles {
  static final TextStyle categoryTitle = GoogleFonts.inter(
    fontWeight: FontWeight.w600,
    fontSize: 11,
    height: 16 / 11,
    letterSpacing: 0,
  );

  static final TextStyle white600Size14 = GoogleFonts.inter(
    fontWeight: FontWeight.w600,
    fontSize: 14,
    color: AppColors.white,
    height: 18 / 14,
    letterSpacing: 0,
    shadows: [
      Shadow(
        offset: Offset(0, 4),
        blurRadius: 1,
        color: Color(0x66000000), // #00000040 = 25% black
      ),
    ],
  );

  static final TextStyle grey400Size14 = GoogleFonts.poppins(
    fontWeight: FontWeight.w400,
    fontSize: 14,
    height: 23 / 14,
    letterSpacing: 0,
    color: Color(0xFF393F43),
  );


  static final TextStyle black600Size14 = GoogleFonts.inter(
    fontWeight: FontWeight.w600,
    fontSize: 14,
    color: AppColors.black,
    height: 18 / 14,
    letterSpacing: 0,
  );

  static final TextStyle white600Size20 = GoogleFonts.poppins(
    fontWeight: FontWeight.w600,
    fontSize: 20,
    height: 1.0,
    letterSpacing: 1,
    color: AppColors.white,
  );

  static final TextStyle grey400Size12 = GoogleFonts.poppins(
    fontWeight: FontWeight.w400,
    fontSize: 12,
    height: 1.0,
    letterSpacing: 0,
    color: Colors.black.withOpacity(0.5),
  );

  static final TextStyle black700Size14 = GoogleFonts.poppins(
    fontSize: 14,
    fontWeight: FontWeight.w700,
    color: Colors.black,
  );

  static final TextStyle body12 = GoogleFonts.poppins(
    fontWeight: FontWeight.w400, // Regular
    fontSize: 12,
    height: 1.0, // 100% line-height
    letterSpacing: 0,
    color: Colors.black,
  );

  static final TextStyle body12Medium = GoogleFonts.poppins(
    fontWeight: FontWeight.w500,
    fontSize: 12,
    height: 1.0,
    letterSpacing: 0,
    color: Colors.black,
  );

  static final TextStyle strikeThroughPrice = GoogleFonts.poppins(
    fontSize: 12,
    fontWeight: FontWeight.w400,
    color: Colors.grey,
    decoration: TextDecoration.lineThrough,
  );

  static final TextStyle black500Size12 = GoogleFonts.poppins(
    fontWeight: FontWeight.w500,
    fontSize: 12,
    height: 1.0,
    color: Colors.black,
  );

  static final TextStyle black600Size20 = GoogleFonts.poppins(
    fontWeight: FontWeight.w600,
    fontSize: 20,
    height: 1.0,
    letterSpacing: 0,
  );

  static final TextStyle white600Size12 = GoogleFonts.poppins(
    fontWeight: FontWeight.w600,
    color: AppColors.white,
    fontSize: 12,
    height: 16 / 12,
    letterSpacing: 0,
  );

  static const TextStyle expertTitle = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.bold,
  );

  static const TextStyle cardPrice = TextStyle(
    color: AppColors.bluePrice,
    fontWeight: FontWeight.bold,
  );
}