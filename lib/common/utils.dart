import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

TextStyle myTextStyle(
  double size, [
  Color? color = Colors.black,
  FontWeight? fontWeight = FontWeight.normal,
]) {
  return GoogleFonts.montserrat(
    fontSize: size,
    fontWeight: fontWeight,
    color: color,
  );
}

List<String> categories = [
  'Business',
  'Entertainment',
  'General',
  'Health',
  'Science',
  'Sports',
  'Technology',
];
