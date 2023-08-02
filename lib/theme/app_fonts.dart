import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';
import 'package:nav_app_ecomputer/theme/app_colors.dart';

TextTheme TEXT_THEME_BLACK = TextTheme();

TextTheme TEXT_THEME_WHITE = TextTheme(
  displayLarge: GoogleFonts.montserrat(
    color: AppColors.COLOR_BLACK,
    fontWeight: FontWeight.w400,
    fontSize: 18,
  ),
  bodyLarge: GoogleFonts.montserrat(
    color: AppColors.COLOR_WHITE,
    fontWeight: FontWeight.w400,
    fontSize: 18,
  ),
  bodyMedium: GoogleFonts.montserrat(
    color: AppColors.COLOR_WHITE,
    fontWeight: FontWeight.w400,
    fontSize: 16,
  ),
  titleMedium: GoogleFonts.montserrat(
    color: AppColors.COLOR_WHITE,
    fontWeight: FontWeight.w300,
    fontSize: 14,
  ),
  labelLarge: GoogleFonts.montserrat(
    color: AppColors.COLOR_WHITE,
    fontWeight: FontWeight.w600,
    fontSize: 18,
  ),
);
