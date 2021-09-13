import 'package:flutter/material.dart';

const kSelectedDishDecoration = BoxDecoration(
  shape: BoxShape.circle,
  boxShadow: [
    BoxShadow(
      color: Color(0xFFF18C1D),
      spreadRadius: 2,
      blurRadius: 15,
    ),
  ],
);
const kSelectedAddOnDecoration = BoxDecoration(
  shape: BoxShape.circle,
  boxShadow: [
    BoxShadow(
      color: Color(0xFFF18C1D),
      spreadRadius: 2,
      blurRadius: 8,
    ),
  ],
);
const kNavButtonTextStyle =
    TextStyle(fontSize: 25, fontWeight: FontWeight.w600);
const kGradientBackgroundDecoration = BoxDecoration(
  gradient: LinearGradient(
    colors: [Color(0xFFFDCEBD), Color(0xFFFCD5A2)],
  ),
);
const kActiveNavIconColor = Color(0xFF617C63);
