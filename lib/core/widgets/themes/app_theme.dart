import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'app_colors.dart';

class Appthemes {
  static ThemeData lightThemeData(BuildContext context) {
    return ThemeData.light().copyWith(
      useMaterial3: true,
      primaryColor: AppColor.kPrimaryColor,
      appBarTheme: const AppBarTheme(centerTitle: true, elevation: 0),
      iconTheme: const IconThemeData(color: AppColor.kPrimaryColor),
      textTheme: GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme)
          .apply(bodyColor: AppColor.kPrimaryColor),
      colorScheme: const ColorScheme.light(
        primary: AppColor.kPrimaryColor,
        secondary: AppColor.kSecondaryColor,
        error: AppColor.kRed,
      ),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        // backgroundColor: Colors.white,
        selectedItemColor: AppColor.kPrimaryColor.withOpacity(0.7),
        selectedIconTheme: const IconThemeData(color: AppColor.kPrimaryColor),
        showUnselectedLabels: true,
      ),
    );
  }

  static ThemeData darkThemeData(BuildContext context) {
// Par défaut Flutter nous fournit un thème clair et sombre
// Nous le modifions simplement comme notre besoin
    return ThemeData.dark().copyWith(
      useMaterial3: true,
      primaryColor: AppColor.kPrimaryColor,
      appBarTheme: const AppBarTheme(centerTitle: true, elevation: 0),
      iconTheme: const IconThemeData(color: AppColor.kPrimaryColor),
      textTheme: GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme)
          .apply(bodyColor: AppColor.kPrimaryColor),
      colorScheme: const ColorScheme.dark(
        primary: AppColor.kPrimaryColor,
        secondary: AppColor.kSecondaryColor,
        error: AppColor.kDeepRed,
      ),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        // backgroundColor: Colors.black87,
        selectedItemColor: AppColor.kPrimaryColor.withOpacity(0.7),
        selectedIconTheme: const IconThemeData(color: AppColor.kPrimaryColor),
        showUnselectedLabels: true,
      ),
    );
  }
}
