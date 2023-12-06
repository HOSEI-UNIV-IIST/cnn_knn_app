// ignore_for_file: annotate_overrides, overridden_fields

import 'package:flutter/material.dart';

abstract class AppThemeMode {
  static ThemeMode get themeMode {
    return ThemeMode.light;
  }

  static AppThemeMode of(BuildContext context) {
    return Theme.of(context).brightness == Brightness.dark
        ? DarkModeTheme()
        : LightModeTheme();
  }

  late Color primaryColor;
  late Color secondaryColor;
  late Color red;
  late Color green;
  late Color deepRed;
  late Color purple;
  late Color blue;
  late Color orange;
  late Color white;
  late Color black;
  late Color tertiaryColor;
  late Color primaryBackground;
  late Color secondaryBackground;
  late Color primaryText;
  late Color secondaryText;
  late Color neutralColors;
  late Color line;
  late Color numpad;
  late Color shapeColor;

  String get title1Family => typography.title1Family;
  TextStyle get title1 => typography.title1;
  String get title2Family => typography.title2Family;
  TextStyle get title2 => typography.title2;
  String get title3Family => typography.title3Family;
  TextStyle get title3 => typography.title3;
  String get subtitle1Family => typography.subtitle1Family;
  TextStyle get subtitle1 => typography.subtitle1;
  String get subtitle2Family => typography.subtitle2Family;
  TextStyle get subtitle2 => typography.subtitle2;
  String get bodyText1Family => typography.bodyText1Family;
  TextStyle get bodyText1 => typography.bodyText1;
  String get bodyText2Family => typography.bodyText2Family;
  TextStyle get bodyText2 => typography.bodyText2;
  TextStyle get customText => typography.customText;

  Typography get typography => ThemeTypography(this);
}

class LightModeTheme extends AppThemeMode {
  late Color primaryColor = const Color(0xFF00AFAF);
  late Color secondaryColor = const Color(0xFFA8CB45);
  late Color green = const Color(0xFF3B8D99);
  late Color red = const Color(0xFFA43792);
  late Color deepRed = const Color(0xFFFA0404);
  late Color purple = const Color(0xFF47549D);
  late Color blue = const Color(0xFF16A7F8);
  late Color orange = const Color(0xFFFF8919);
  late Color white = const Color(0xFFFFFFFF);
  late Color black = const Color(0xFF000000);
  late Color tertiaryColor = const Color(0xFFD0B1E7);
  late Color primaryBackground = const Color(0xFFF1F4F8);
  late Color secondaryBackground = const Color(0xFFFFFFFF);
  late Color primaryText = const Color(0xFF101213);
  late Color secondaryText = const Color(0xFF57636C);
  late Color neutralColors = const Color(0xffa9b5cc);
  late Color line = const Color.fromARGB(255, 188, 195, 207);
  late Color numpad = const Color(0x42ABB0B8);
    late Color shapeColor = const Color(0xFFD9D9D9);

}

abstract class Typography {
  String get title1Family;
  TextStyle get title1;
  String get title2Family;
  TextStyle get title2;
  String get title3Family;
  TextStyle get title3;
  String get subtitle1Family;
  TextStyle get subtitle1;
  String get subtitle2Family;
  TextStyle get subtitle2;
  String get bodyText1Family;
  TextStyle get bodyText1;
  String get bodyText2Family;
  TextStyle get bodyText2;
  String get customFamily;
  TextStyle get customText;
}

class ThemeTypography extends Typography {
  ThemeTypography(this.theme);

  final AppThemeMode theme;

  @override
  String get customFamily => 'Futura';
  @override
  TextStyle get customText => TextStyle(
        fontFamily: 'Futura',
        color: theme.primaryText,
        fontSize: 24,
      );

  @override
  String get title1Family => 'Futura';
  @override
  TextStyle get title1 => TextStyle(
        fontFamily: 'Futura',
        color: theme.primaryText,
        fontWeight: FontWeight.w600,
        fontSize: 24,
      );
  @override
  String get title2Family => 'Futura';
  @override
  TextStyle get title2 => TextStyle(
        fontFamily: 'Futura',
        color: theme.secondaryText,
        fontWeight: FontWeight.w600,
        fontSize: 22,
      );
  @override
  String get title3Family => 'Futura';
  @override
  TextStyle get title3 => TextStyle(
        fontFamily: 'Futura',
        color: theme.primaryText,
        fontWeight: FontWeight.w600,
        fontSize: 20,
      );
  @override
  String get subtitle1Family => 'Futura';
  @override
  TextStyle get subtitle1 => TextStyle(
        fontFamily: 'Futura',
        color: theme.primaryText,
        fontWeight: FontWeight.w600,
        fontSize: 18,
      );
  @override
  String get subtitle2Family => 'Futura';
  @override
  TextStyle get subtitle2 => TextStyle(
        fontFamily: 'Futura',
        color: theme.secondaryText,
        fontWeight: FontWeight.w600,
        fontSize: 16,
      );
  @override
  String get bodyText1Family => 'Futura';
  @override
  TextStyle get bodyText1 => TextStyle(
        fontFamily: 'Futura',
        color: theme.primaryText,
        fontWeight: FontWeight.w600,
        fontSize: 14,
      );
  @override
  String get bodyText2Family => 'Futura';
  @override
  TextStyle get bodyText2 => TextStyle(
        fontFamily: 'Futura',
        color: theme.secondaryText,
        fontWeight: FontWeight.w600,
        fontSize: 14,
      );
}

class DarkModeTheme extends AppThemeMode {
  late Color primaryColor = const Color(0xFF00AFAF);
  late Color secondaryColor = const Color(0xFFA8CB45);
  late Color green = const Color(0xFF3B8D99);
  late Color red = const Color(0xFFA43792);
  late Color deepRed = const Color(0xFFFA0404);
  late Color purple = const Color.fromARGB(255, 158, 170, 237);
  late Color blue = const Color(0xFF16A7F8);
  late Color orange = const Color(0xFFFF8919);
  late Color white = const Color(0xFF57636C);
  late Color black = const Color(0xFFFFFFFF);
  late Color tertiaryColor = const Color(0xFFD0B1E7);
  late Color primaryBackground = const Color(0XFF1E2124);
  late Color secondaryBackground = const Color(0XFF282b30);
  late Color primaryText = const Color(0xFFFFFFFF);
  late Color secondaryText = const Color(0xFF57636C);
  late Color neutralColors = const Color(0xffa9b5cc);
  late Color line = const Color(0xffa9b5cc);
  late Color numpad = const Color(0x42ABB0B8);
  late Color shapeColor = const Color(0xFFD9D9D9);
}

extension TextStyleHelper on TextStyle {
  TextStyle override({
    String? fontFamily,
    Color? color,
    double? fontSize,
    FontWeight? fontWeight,
    double? letterSpacing,
    FontStyle? fontStyle,
    bool useGoogleFonts = true,
    TextDecoration? decoration,
    double? lineHeight,
  }) =>
      useGoogleFonts
          ? TextStyle(
              fontFamily: fontFamily!,
              color: color ?? this.color,
              fontSize: fontSize ?? this.fontSize,
              letterSpacing: letterSpacing ?? this.letterSpacing,
              fontWeight: fontWeight ?? this.fontWeight,
              fontStyle: fontStyle ?? this.fontStyle,
              decoration: decoration,
              height: lineHeight,
            )
          : copyWith(
              fontFamily: fontFamily,
              color: color,
              fontSize: fontSize,
              letterSpacing: letterSpacing,
              fontWeight: fontWeight,
              fontStyle: fontStyle,
              decoration: decoration,
              height: lineHeight,
            );
}
