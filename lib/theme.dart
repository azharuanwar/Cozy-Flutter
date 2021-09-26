import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// COLOR
Color whiteColor = Color(0xffFFFFFF);
Color purpleColor = Color(0xff5843BE);
Color blackColor = Color(0xff000000);
Color greyColor = Color(0xff7A7E86);

double defaultMargin = 24;
int edge = 24;

// TextStyle
TextStyle titleTextStyle = GoogleFonts.poppins(
  fontSize: 24,
  fontWeight: FontWeight.w600,
  color: blackColor,
);
TextStyle subTitleTextStyle = GoogleFonts.poppins(
    fontSize: 16, fontWeight: FontWeight.w200, color: greyColor);
TextStyle buttonTextStyle = GoogleFonts.poppins(
  fontSize: 18,
  fontWeight: FontWeight.w500,
  color: Colors.white,
);
TextStyle categoryTextStyle = GoogleFonts.poppins(
    fontSize: 16, fontWeight: FontWeight.w500, color: blackColor);
TextStyle namePlaceTextStyle = GoogleFonts.poppins(
    fontSize: 18, fontWeight: FontWeight.w500, color: blackColor);
TextStyle locationTextStyle = GoogleFonts.poppins(
    fontSize: 14, fontWeight: FontWeight.w200, color: greyColor);

TextStyle priceTextStyle = GoogleFonts.poppins(
    fontSize: 16, fontWeight: FontWeight.w600, color: purpleColor);
