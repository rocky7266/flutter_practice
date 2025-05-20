import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class ResponsiveUtils {
  static bool isWeb() => kIsWeb;

  static bool isMobile(BuildContext context) =>
      MediaQuery.of(context).size.width < 768;

  static bool isTablet(BuildContext context) =>
      MediaQuery.of(context).size.width >= 768 &&
      MediaQuery.of(context).size.width <= 1024;

  static bool isDesktop(BuildContext context) =>
      MediaQuery.of(context).size.width > 1024;

  // Function to get responsive grid count based on screen size
  static int getGridCrossAxisCount(BuildContext context) {
    if (isDesktop(context)) return 4;
    if (isTablet(context)) return 3;
    return 2; // Default for mobile
  }

  // Function to get responsive grid aspect ratio based on screen size
  static double getGridAspectRatio(BuildContext context) {
    if (isDesktop(context)) return .95;
    if (isTablet(context)) return 0.75;
    return 0.60; // Default for mobile
  }
}
