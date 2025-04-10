// ignore_for_file: overridden_fields, annotate_overrides

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:shared_preferences/shared_preferences.dart';

const kThemeModeKey = '__theme_mode__';
SharedPreferences? _prefs;

abstract class FlutterFlowTheme {
  static Future initialize() async =>
      _prefs = await SharedPreferences.getInstance();
  static ThemeMode get themeMode {
    final darkMode = _prefs?.getBool(kThemeModeKey);
    return darkMode == null
        ? ThemeMode.system
        : darkMode
            ? ThemeMode.dark
            : ThemeMode.light;
  }

  static void saveThemeMode(ThemeMode mode) => mode == ThemeMode.system
      ? _prefs?.remove(kThemeModeKey)
      : _prefs?.setBool(kThemeModeKey, mode == ThemeMode.dark);

  static FlutterFlowTheme of(BuildContext context) {
    return Theme.of(context).brightness == Brightness.dark
        ? DarkModeTheme()
        : LightModeTheme();
  }

  @Deprecated('Use primary instead')
  Color get primaryColor => primary;
  @Deprecated('Use secondary instead')
  Color get secondaryColor => secondary;
  @Deprecated('Use tertiary instead')
  Color get tertiaryColor => tertiary;

  late Color primary;
  late Color secondary;
  late Color tertiary;
  late Color alternate;
  late Color primaryText;
  late Color secondaryText;
  late Color primaryBackground;
  late Color secondaryBackground;
  late Color accent1;
  late Color accent2;
  late Color accent3;
  late Color accent4;
  late Color success;
  late Color warning;
  late Color error;
  late Color info;

  late Color overlay30;
  late Color overlay0;
  late Color alternateOne400;
  late Color alternateOne430;
  late Color success30;
  late Color alternateTwo400;
  late Color alternateTwo430;
  late Color primary600;
  late Color primary630;
  late Color success600;
  late Color success630;
  late Color primary300;
  late Color primary330;
  late Color primary500;
  late Color primary530;
  late Color primary700;
  late Color primary730;
  late Color primaryText50;
  late Color primaryText30;
  late Color alternateThree400;
  late Color alternateThree430;
  late Color background;

  @Deprecated('Use displaySmallFamily instead')
  String get title1Family => displaySmallFamily;
  @Deprecated('Use displaySmall instead')
  TextStyle get title1 => typography.displaySmall;
  @Deprecated('Use headlineMediumFamily instead')
  String get title2Family => typography.headlineMediumFamily;
  @Deprecated('Use headlineMedium instead')
  TextStyle get title2 => typography.headlineMedium;
  @Deprecated('Use headlineSmallFamily instead')
  String get title3Family => typography.headlineSmallFamily;
  @Deprecated('Use headlineSmall instead')
  TextStyle get title3 => typography.headlineSmall;
  @Deprecated('Use titleMediumFamily instead')
  String get subtitle1Family => typography.titleMediumFamily;
  @Deprecated('Use titleMedium instead')
  TextStyle get subtitle1 => typography.titleMedium;
  @Deprecated('Use titleSmallFamily instead')
  String get subtitle2Family => typography.titleSmallFamily;
  @Deprecated('Use titleSmall instead')
  TextStyle get subtitle2 => typography.titleSmall;
  @Deprecated('Use bodyMediumFamily instead')
  String get bodyText1Family => typography.bodyMediumFamily;
  @Deprecated('Use bodyMedium instead')
  TextStyle get bodyText1 => typography.bodyMedium;
  @Deprecated('Use bodySmallFamily instead')
  String get bodyText2Family => typography.bodySmallFamily;
  @Deprecated('Use bodySmall instead')
  TextStyle get bodyText2 => typography.bodySmall;

  String get displayLargeFamily => typography.displayLargeFamily;
  TextStyle get displayLarge => typography.displayLarge;
  String get displayMediumFamily => typography.displayMediumFamily;
  TextStyle get displayMedium => typography.displayMedium;
  String get displaySmallFamily => typography.displaySmallFamily;
  TextStyle get displaySmall => typography.displaySmall;
  String get headlineLargeFamily => typography.headlineLargeFamily;
  TextStyle get headlineLarge => typography.headlineLarge;
  String get headlineMediumFamily => typography.headlineMediumFamily;
  TextStyle get headlineMedium => typography.headlineMedium;
  String get headlineSmallFamily => typography.headlineSmallFamily;
  TextStyle get headlineSmall => typography.headlineSmall;
  String get titleLargeFamily => typography.titleLargeFamily;
  TextStyle get titleLarge => typography.titleLarge;
  String get titleMediumFamily => typography.titleMediumFamily;
  TextStyle get titleMedium => typography.titleMedium;
  String get titleSmallFamily => typography.titleSmallFamily;
  TextStyle get titleSmall => typography.titleSmall;
  String get labelLargeFamily => typography.labelLargeFamily;
  TextStyle get labelLarge => typography.labelLarge;
  String get labelMediumFamily => typography.labelMediumFamily;
  TextStyle get labelMedium => typography.labelMedium;
  String get labelSmallFamily => typography.labelSmallFamily;
  TextStyle get labelSmall => typography.labelSmall;
  String get bodyLargeFamily => typography.bodyLargeFamily;
  TextStyle get bodyLarge => typography.bodyLarge;
  String get bodyMediumFamily => typography.bodyMediumFamily;
  TextStyle get bodyMedium => typography.bodyMedium;
  String get bodySmallFamily => typography.bodySmallFamily;
  TextStyle get bodySmall => typography.bodySmall;

  Typography get typography => ThemeTypography(this);
}

class LightModeTheme extends FlutterFlowTheme {
  @Deprecated('Use primary instead')
  Color get primaryColor => primary;
  @Deprecated('Use secondary instead')
  Color get secondaryColor => secondary;
  @Deprecated('Use tertiary instead')
  Color get tertiaryColor => tertiary;

  late Color primary = const Color(0xFF007AFF);
  late Color secondary = const Color(0xFFFF9501);
  late Color tertiary = const Color(0xFF6A56B3);
  late Color alternate = const Color(0xFFD5DAE7);
  late Color primaryText = const Color(0xFF101321);
  late Color secondaryText = const Color(0xFF5D6174);
  late Color primaryBackground = const Color(0xFFF8FAFF);
  late Color secondaryBackground = const Color(0xFFFFFFFF);
  late Color accent1 = const Color(0x4C007AFF);
  late Color accent2 = const Color(0x4DFF9501);
  late Color accent3 = const Color(0x4D6A56B3);
  late Color accent4 = const Color(0x9AFFFFFF);
  late Color success = const Color(0xFF03CE9F);
  late Color warning = const Color(0x4DFF4672);
  late Color error = const Color(0xFFFF4672);
  late Color info = const Color(0xFFFFFFFF);

  late Color overlay30 = Color(0x4DFFFFFF);
  late Color overlay0 = Color(0x00FFFFFF);
  late Color alternateOne400 = Color(0xFF222446);
  late Color alternateOne430 = Color(0x4C222446);
  late Color success30 = Color(0x4D04C7BE);
  late Color alternateTwo400 = Color(0xFFD81DCE);
  late Color alternateTwo430 = Color(0x4DD81DCE);
  late Color primary600 = Color(0xFF045ABB);
  late Color primary630 = Color(0x4C045ABB);
  late Color success600 = Color(0xFF039271);
  late Color success630 = Color(0x4D039271);
  late Color primary300 = Color(0xFF068EFF);
  late Color primary330 = Color(0x4C068EFF);
  late Color primary500 = Color(0xFF085DC5);
  late Color primary530 = Color(0x4C085DC5);
  late Color primary700 = Color(0xFF10407C);
  late Color primary730 = Color(0x4D10407C);
  late Color primaryText50 = Color(0x7F101321);
  late Color primaryText30 = Color(0x4C101321);
  late Color alternateThree400 = Color(0xFFF38866);
  late Color alternateThree430 = Color(0x4CF38866);
  late Color background = Color(0xFF1B1D27);
}

abstract class Typography {
  String get displayLargeFamily;
  TextStyle get displayLarge;
  String get displayMediumFamily;
  TextStyle get displayMedium;
  String get displaySmallFamily;
  TextStyle get displaySmall;
  String get headlineLargeFamily;
  TextStyle get headlineLarge;
  String get headlineMediumFamily;
  TextStyle get headlineMedium;
  String get headlineSmallFamily;
  TextStyle get headlineSmall;
  String get titleLargeFamily;
  TextStyle get titleLarge;
  String get titleMediumFamily;
  TextStyle get titleMedium;
  String get titleSmallFamily;
  TextStyle get titleSmall;
  String get labelLargeFamily;
  TextStyle get labelLarge;
  String get labelMediumFamily;
  TextStyle get labelMedium;
  String get labelSmallFamily;
  TextStyle get labelSmall;
  String get bodyLargeFamily;
  TextStyle get bodyLarge;
  String get bodyMediumFamily;
  TextStyle get bodyMedium;
  String get bodySmallFamily;
  TextStyle get bodySmall;
}

class ThemeTypography extends Typography {
  ThemeTypography(this.theme);

  final FlutterFlowTheme theme;

  String get displayLargeFamily => 'Figtree';
  TextStyle get displayLarge => GoogleFonts.getFont(
        'Figtree',
        color: theme.primaryText,
        fontWeight: FontWeight.w500,
        fontSize: 48.0,
      );
  String get displayMediumFamily => 'Figtree';
  TextStyle get displayMedium => GoogleFonts.getFont(
        'Figtree',
        color: theme.primaryText,
        fontWeight: FontWeight.w600,
        fontSize: 36.0,
      );
  String get displaySmallFamily => 'Figtree';
  TextStyle get displaySmall => GoogleFonts.getFont(
        'Figtree',
        color: theme.primaryText,
        fontWeight: FontWeight.w600,
        fontSize: 32.0,
      );
  String get headlineLargeFamily => 'Figtree';
  TextStyle get headlineLarge => GoogleFonts.getFont(
        'Figtree',
        color: theme.primaryText,
        fontWeight: FontWeight.normal,
        fontSize: 32.0,
      );
  String get headlineMediumFamily => 'Figtree';
  TextStyle get headlineMedium => GoogleFonts.getFont(
        'Figtree',
        color: theme.primaryText,
        fontWeight: FontWeight.w500,
        fontSize: 24.0,
      );
  String get headlineSmallFamily => 'Figtree';
  TextStyle get headlineSmall => GoogleFonts.getFont(
        'Figtree',
        color: theme.primaryText,
        fontWeight: FontWeight.w600,
        fontSize: 22.0,
      );
  String get titleLargeFamily => 'Figtree';
  TextStyle get titleLarge => GoogleFonts.getFont(
        'Figtree',
        color: theme.primaryText,
        fontWeight: FontWeight.w500,
        fontSize: 18.0,
      );
  String get titleMediumFamily => 'Figtree';
  TextStyle get titleMedium => GoogleFonts.getFont(
        'Figtree',
        color: theme.info,
        fontWeight: FontWeight.w500,
        fontSize: 18.0,
      );
  String get titleSmallFamily => 'Figtree';
  TextStyle get titleSmall => GoogleFonts.getFont(
        'Figtree',
        color: theme.info,
        fontWeight: FontWeight.w500,
        fontSize: 16.0,
      );
  String get labelLargeFamily => 'Figtree';
  TextStyle get labelLarge => GoogleFonts.getFont(
        'Figtree',
        color: theme.secondaryText,
        fontWeight: FontWeight.w500,
        fontSize: 16.0,
      );
  String get labelMediumFamily => 'Figtree';
  TextStyle get labelMedium => GoogleFonts.getFont(
        'Figtree',
        color: theme.secondaryText,
        fontWeight: FontWeight.w500,
        fontSize: 14.0,
      );
  String get labelSmallFamily => 'Figtree';
  TextStyle get labelSmall => GoogleFonts.getFont(
        'Figtree',
        color: theme.secondaryText,
        fontWeight: FontWeight.w500,
        fontSize: 12.0,
      );
  String get bodyLargeFamily => 'Figtree';
  TextStyle get bodyLarge => GoogleFonts.getFont(
        'Figtree',
        color: theme.primaryText,
        fontWeight: FontWeight.w500,
        fontSize: 16.0,
      );
  String get bodyMediumFamily => 'Figtree';
  TextStyle get bodyMedium => GoogleFonts.getFont(
        'Figtree',
        color: theme.primaryText,
        fontWeight: FontWeight.w500,
        fontSize: 14.0,
      );
  String get bodySmallFamily => 'Figtree';
  TextStyle get bodySmall => GoogleFonts.getFont(
        'Figtree',
        color: theme.primaryText,
        fontWeight: FontWeight.w500,
        fontSize: 12.0,
      );
}

class DarkModeTheme extends FlutterFlowTheme {
  @Deprecated('Use primary instead')
  Color get primaryColor => primary;
  @Deprecated('Use secondary instead')
  Color get secondaryColor => secondary;
  @Deprecated('Use tertiary instead')
  Color get tertiaryColor => tertiary;

  late Color primary = const Color(0xFF007AFF);
  late Color secondary = const Color(0xFFFF9501);
  late Color tertiary = const Color(0xFF9E68F7);
  late Color alternate = const Color(0xFF343750);
  late Color primaryText = const Color(0xFFFFFFFF);
  late Color secondaryText = const Color(0xFFA3A8C1);
  late Color primaryBackground = const Color(0xFF1B1C28);
  late Color secondaryBackground = const Color(0xFF12141E);
  late Color accent1 = const Color(0x4C007AFF);
  late Color accent2 = const Color(0x4DFF9501);
  late Color accent3 = const Color(0x4D9E68F7);
  late Color accent4 = const Color(0xB21B1C28);
  late Color success = const Color(0xFF03CE9F);
  late Color warning = const Color(0x4DFF4672);
  late Color error = const Color(0xFFFF4672);
  late Color info = const Color(0xFFFFFFFF);

  late Color overlay30 = Color(0x4D101321);
  late Color overlay0 = Color(0x00101321);
  late Color alternateOne400 = Color(0xFF222446);
  late Color alternateOne430 = Color(0x4C222446);
  late Color success30 = Color(0x4D03CE9F);
  late Color alternateTwo400 = Color(0xFFD81DCE);
  late Color alternateTwo430 = Color(0x4DD81DCE);
  late Color primary600 = Color(0xFF045ABB);
  late Color primary630 = Color(0x4C045ABB);
  late Color success600 = Color(0xFF039271);
  late Color success630 = Color(0x4C039271);
  late Color primary300 = Color(0xFF068EFF);
  late Color primary330 = Color(0x4C068EFF);
  late Color primary500 = Color(0xFF085DC5);
  late Color primary530 = Color(0x4C085DC5);
  late Color primary700 = Color(0xFF10407C);
  late Color primary730 = Color(0x4D10407C);
  late Color primaryText50 = Color(0x7FFFFFFF);
  late Color primaryText30 = Color(0x4CFFFFFF);
  late Color alternateThree400 = Color(0xFFF38866);
  late Color alternateThree430 = Color(0x4CF38866);
  late Color background = Color(0xFF1B1D27);
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
    List<Shadow>? shadows,
  }) =>
      useGoogleFonts
          ? GoogleFonts.getFont(
              fontFamily!,
              color: color ?? this.color,
              fontSize: fontSize ?? this.fontSize,
              letterSpacing: letterSpacing ?? this.letterSpacing,
              fontWeight: fontWeight ?? this.fontWeight,
              fontStyle: fontStyle ?? this.fontStyle,
              decoration: decoration,
              height: lineHeight,
              shadows: shadows,
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
              shadows: shadows,
            );
}
