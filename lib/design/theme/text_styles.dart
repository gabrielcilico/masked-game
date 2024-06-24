import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TextStylesBase {
  TextStyle regular;
  TextStyle medium;
  TextStyle semiBold;
  TextStyle bold;

  TextStylesBase({
    required this.regular,
    required this.medium,
    required this.semiBold,
    required this.bold,
  });
}

abstract class TextStylesFonts {
  TextStylesBase get textXL;
  TextStylesBase get textLG;
  TextStylesBase get textMD;
  TextStylesBase get textSM;
  TextStylesBase get textXS;
  TextStylesBase get textXXS;

  TextStylesFonts();
}

class GloriaHallelujah extends TextStylesFonts {
  @override
  TextStylesBase get textXL => TextStylesBase(
        regular: GoogleFonts.gloriaHallelujah(
          fontSize: 72,
          fontWeight: FontWeight.w400,
        ),
        medium: GoogleFonts.gloriaHallelujah(
          fontSize: 72,
          fontWeight: FontWeight.w500,
        ),
        semiBold: GoogleFonts.gloriaHallelujah(
          fontSize: 72,
          fontWeight: FontWeight.w600,
        ),
        bold: GoogleFonts.gloriaHallelujah(
          fontSize: 72,
          fontWeight: FontWeight.w700,
        ),
      );

  @override
  TextStylesBase get textLG => TextStylesBase(
        regular: GoogleFonts.gloriaHallelujah(
          fontSize: 48,
          fontWeight: FontWeight.w400,
        ),
        medium: GoogleFonts.gloriaHallelujah(
          fontSize: 48,
          fontWeight: FontWeight.w500,
        ),
        semiBold: GoogleFonts.gloriaHallelujah(
          fontSize: 48,
          fontWeight: FontWeight.w600,
        ),
        bold: GoogleFonts.gloriaHallelujah(
          fontSize: 48,
          fontWeight: FontWeight.w700,
        ),
      );

  @override
  TextStylesBase get textMD => TextStylesBase(
        regular: GoogleFonts.gloriaHallelujah(
          fontSize: 32,
          fontWeight: FontWeight.w400,
        ),
        medium: GoogleFonts.gloriaHallelujah(
          fontSize: 32,
          fontWeight: FontWeight.w500,
        ),
        semiBold: GoogleFonts.gloriaHallelujah(
          fontSize: 32,
          fontWeight: FontWeight.w600,
        ),
        bold: GoogleFonts.gloriaHallelujah(
          fontSize: 32,
          fontWeight: FontWeight.w700,
        ),
      );

  @override
  TextStylesBase get textSM => TextStylesBase(
        regular: GoogleFonts.gloriaHallelujah(
          fontSize: 24,
          fontWeight: FontWeight.w400,
        ),
        medium: GoogleFonts.gloriaHallelujah(
          fontSize: 24,
          fontWeight: FontWeight.w500,
        ),
        semiBold: GoogleFonts.gloriaHallelujah(
          fontSize: 24,
          fontWeight: FontWeight.w600,
        ),
        bold: GoogleFonts.gloriaHallelujah(
          fontSize: 24,
          fontWeight: FontWeight.w700,
        ),
      );

  @override
  TextStylesBase get textXS => TextStylesBase(
        regular: GoogleFonts.gloriaHallelujah(
          fontSize: 16,
          fontWeight: FontWeight.w400,
        ),
        medium: GoogleFonts.gloriaHallelujah(
          fontSize: 16,
          fontWeight: FontWeight.w500,
        ),
        semiBold: GoogleFonts.gloriaHallelujah(
          fontSize: 16,
          fontWeight: FontWeight.w600,
        ),
        bold: GoogleFonts.gloriaHallelujah(
          fontSize: 16,
          fontWeight: FontWeight.w700,
        ),
      );

  @override
  TextStylesBase get textXXS => TextStylesBase(
        regular: GoogleFonts.gloriaHallelujah(
          fontSize: 8,
          fontWeight: FontWeight.w400,
        ),
        medium: GoogleFonts.gloriaHallelujah(
          fontSize: 8,
          fontWeight: FontWeight.w500,
        ),
        semiBold: GoogleFonts.gloriaHallelujah(
          fontSize: 8,
          fontWeight: FontWeight.w600,
        ),
        bold: GoogleFonts.gloriaHallelujah(
          fontSize: 8,
          fontWeight: FontWeight.w700,
        ),
      );
}
