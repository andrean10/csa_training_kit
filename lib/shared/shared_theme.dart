import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SharedTheme {
  static const Color whiteColor = Color(0xFFFFFFFF);

  // static final _primaryTextStyle = GoogleFonts.josefinSans().fontFamily;
  static final _secondaryTextStyle = GoogleFonts.openSans().fontFamily;

  static const thin = FontWeight.w100;
  static const extraLight = FontWeight.w200;
  static const light = FontWeight.w300;
  static const regular = FontWeight.w400;
  static const medium = FontWeight.w500;
  static const semiBold = FontWeight.w600;
  static const bold = FontWeight.w700;
  static const extraBold = FontWeight.w800;
  static const black = FontWeight.w900;

  static const _lightColorScheme = ColorScheme(
    brightness: Brightness.light,
    primary: Color(0xff485d92),
    surfaceTint: Color(0xff485d92),
    onPrimary: Color(0xffffffff),
    primaryContainer: Color(0xffdae2ff),
    onPrimaryContainer: Color(0xff001847),
    secondary: Color(0xff585e71),
    onSecondary: Color(0xffffffff),
    secondaryContainer: Color(0xffdce2f9),
    onSecondaryContainer: Color(0xff151b2c),
    tertiary: Color(0xff735471),
    onTertiary: Color(0xffffffff),
    tertiaryContainer: Color(0xfffed7f9),
    onTertiaryContainer: Color(0xff2b122c),
    error: Color(0xffba1a1a),
    onError: Color(0xffffffff),
    errorContainer: Color(0xffffdad6),
    onErrorContainer: Color(0xff410002),
    background: Color(0xfffaf8ff),
    onBackground: Color(0xff1a1b21),
    surface: Color(0xfffaf8ff),
    onSurface: Color(0xff1a1b21),
    surfaceVariant: Color(0xffe1e2ec),
    onSurfaceVariant: Color(0xff45464f),
    outline: Color(0xff757780),
    outlineVariant: Color(0xffc5c6d0),
    shadow: Color(0xff000000),
    scrim: Color(0xff000000),
    inverseSurface: Color(0xff2f3036),
    onInverseSurface: Color(0xfff1f0f7),
    inversePrimary: Color(0xffb2c5ff),
  );

  static const _darkColorScheme = ColorScheme(
    brightness: Brightness.dark,
    primary: Color(0xffb2c5ff),
    surfaceTint: Color(0xffb2c5ff),
    onPrimary: Color(0xff172e60),
    primaryContainer: Color(0xff304578),
    onPrimaryContainer: Color(0xffdae2ff),
    secondary: Color(0xffc0c6dd),
    onSecondary: Color(0xff2a3042),
    secondaryContainer: Color(0xff404659),
    onSecondaryContainer: Color(0xffdce2f9),
    tertiary: Color(0xffe1bbdd),
    onTertiary: Color(0xff412742),
    tertiaryContainer: Color(0xff5a3d59),
    onTertiaryContainer: Color(0xfffed7f9),
    error: Color(0xffffb4ab),
    onError: Color(0xff690005),
    errorContainer: Color(0xff93000a),
    onErrorContainer: Color(0xffffdad6),
    background: Color(0xff121318),
    onBackground: Color(0xffe2e2e9),
    surface: Color(0xff121318),
    onSurface: Color(0xffe2e2e9),
    surfaceVariant: Color(0xff45464f),
    onSurfaceVariant: Color(0xffc5c6d0),
    outline: Color(0xff8f9099),
    outlineVariant: Color(0xff45464f),
    shadow: Color(0xff000000),
    scrim: Color(0xff000000),
    inverseSurface: Color(0xffe2e2e9),
    onInverseSurface: Color(0xff2f3036),
    inversePrimary: Color(0xff485d92),
  );

  static const successColor = Color(0xFF249689);
  static const errorColor = Color(0xFFFF5963);
  static const warningColor = Color(0xFFF9CF58);
  static const infoColor = Color(0xFF1307B2);

  static const accent1Color = Color.fromARGB(30, 75, 57, 239);
  static const accent2Color = Color.fromARGB(30, 57, 210, 192);
  static const accent3Color = Color.fromARGB(30, 238, 139, 96);

  static final _textThemeStyle = TextTheme(
    bodyLarge: TextStyle(fontFamily: _secondaryTextStyle),
    bodyMedium: TextStyle(fontFamily: _secondaryTextStyle),
    bodySmall: TextStyle(fontFamily: _secondaryTextStyle),
  );

  static final lightTheme = ThemeData(
    colorScheme: _lightColorScheme,
    fontFamily: 'Colossalis',
    textTheme: _textThemeStyle,
  );π

  static final darkTheme = ThemeData(
    colorScheme: _darkColorScheme,
    fontFamily: 'Colossalis',
    textTheme: _textThemeStyle,
  );
}
