import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

/// Filea design tokens — single source of truth, mirrors BRAND_KIT.md.
abstract class FileaColors {
  static const sage = Color(0xFF5B8A72);
  static const forest = Color(0xFF2F4F43);
  static const duskLilac = Color(0xFF9187B5);
  static const softGold = Color(0xFFE8C468);
  static const morningMist = Color(0xFFEFF3EF);
  static const surface = Color(0xFFFFFFFF);
  static const inkMoss = Color(0xFF22302B);
  static const stoneGrey = Color(0xFF7C7A75);
  static const paleMist = Color(0xFFDCE4DD);
  static const nightIndigo = Color(0xFF3A4A6B);

  // Dark mode (Sleep routines)
  static const darkBg = Color(0xFF151915);
  static const darkSurface = Color(0xFF1F2620);
  static const darkPrimary = Color(0xFF7FB299);
  static const darkText = Color(0xFFEDEAE3);
}

class FileaTheme {
  static TextTheme _textTheme(Color body, Color heading) => TextTheme(
        displaySmall: GoogleFonts.bricolageGrotesque(
            fontSize: 32, fontWeight: FontWeight.w600, color: heading, height: 1.2),
        headlineMedium: GoogleFonts.bricolageGrotesque(
            fontSize: 24, fontWeight: FontWeight.w600, color: heading, height: 1.25),
        titleMedium: GoogleFonts.bricolageGrotesque(
            fontSize: 20, fontWeight: FontWeight.w600, color: heading),
        bodyLarge: GoogleFonts.karla(fontSize: 16, color: body, height: 1.5),
        bodyMedium: GoogleFonts.karla(fontSize: 16, color: body, height: 1.5),
        bodySmall: GoogleFonts.karla(fontSize: 13, color: FileaColors.stoneGrey),
        labelLarge: GoogleFonts.karla(fontSize: 16, fontWeight: FontWeight.w700),
      );

  /// Timer digits — Spline Sans Mono for steady countdown.
  static TextStyle timer(BuildContext context, {Color? color}) =>
      GoogleFonts.splineSansMono(
          fontSize: 64,
          fontWeight: FontWeight.w500,
          color: color ?? FileaColors.inkMoss,
          fontFeatures: const [FontFeature.tabularFigures()]);

  static ThemeData light() => ThemeData(
        useMaterial3: true,
        scaffoldBackgroundColor: FileaColors.morningMist,
        colorScheme: ColorScheme.fromSeed(
          seedColor: FileaColors.sage,
          primary: FileaColors.sage,
          secondary: FileaColors.duskLilac,
          surface: FileaColors.surface,
          onSurface: FileaColors.inkMoss,
        ),
        textTheme: _textTheme(FileaColors.inkMoss, FileaColors.inkMoss),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: FileaColors.sage,
            foregroundColor: Colors.white,
            minimumSize: const Size.fromHeight(56),
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18)),
            textStyle: GoogleFonts.karla(fontSize: 17, fontWeight: FontWeight.w700),
          ),
        ),
        cardTheme: CardThemeData(
          color: FileaColors.surface,
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
            side: const BorderSide(color: FileaColors.paleMist),
          ),
        ),
      );

  static ThemeData dark() => ThemeData(
        useMaterial3: true,
        scaffoldBackgroundColor: FileaColors.darkBg,
        colorScheme: ColorScheme.fromSeed(
          seedColor: FileaColors.darkPrimary,
          brightness: Brightness.dark,
          primary: FileaColors.darkPrimary,
          surface: FileaColors.darkSurface,
          onSurface: FileaColors.darkText,
        ),
        textTheme: _textTheme(FileaColors.darkText, FileaColors.darkText),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: FileaColors.darkPrimary,
            foregroundColor: FileaColors.darkBg,
            minimumSize: const Size.fromHeight(56),
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18)),
          ),
        ),
      );
}
