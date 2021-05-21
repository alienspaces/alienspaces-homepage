import 'package:flutter/material.dart';

double calculateScale(context) {
  MediaQueryData _mediaQueryData = MediaQuery.of(context);
  double screenWidth = _mediaQueryData.size.width;

  double scale = 100;
  if (screenWidth < 800) {
    scale = 85;
  } else if (screenWidth < 1200) {
    scale = 95;
  }
  return 100 / scale;
}
