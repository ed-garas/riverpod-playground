import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppColors {
  static const Color surface = Color(0xFFEBF1F9);
  static const Color primary = Color(0xFF375677);
  static const Color secondary = Color(0xFF186B53);
  static const Color grey = Color(0xFFABABAB);
  static const Color grey2 = Color(0xFFBFC9C3);
  static const Color grey3 = Color(0xFF686868);
  static const Color border = Color(0xFFE0E0E0);
  static const Color dark = Color(0xFF404944);
  static const Color dark2 = Color(0xFF060606);
  static const ColorScheme theme = ColorScheme(
    brightness: Brightness.light,
    primary: Color(0xFF375677),
    onPrimary: Colors.white,
    secondary: Color(0xFF186B53),
    onSecondary: Colors.white,
    background: Colors.white,
    onBackground: Color(0xFF171D1A),
    error: Color(0xFFBA1A1A),
    onError: Colors.white,
    // errorContainer: Color(0xFFF9EDED),
    // onErrorContainer: Color(0xFFEE0000),
    surface: Color(0xFFEBF1F9),
    onSurface: Color(0xFF171D1A),
  );
}

class AppSpacing {
  static const double xs = 8;
  static const double sm = 12;
  static const double md = 16;
  static const double lg = 24;
  static const double xl = 32;
}

ThemeData theme() {
  return ThemeData(
      useMaterial3: true,
      fontFamily: GoogleFonts.ptSans().fontFamily,
      colorScheme: AppColors.theme,
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          foregroundColor: AppColors.primary,
          disabledForegroundColor: AppColors.primary.withOpacity(0.6),
          shadowColor: Colors.transparent,
          side: const BorderSide(
            width: 1,
            color: Color(0xFF707974),
          ),
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(12)),
          ),
        ),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          elevation: 0,
          backgroundColor: AppColors.primary,
          foregroundColor: Colors.white,
          disabledBackgroundColor: AppColors.primary.withOpacity(0.6),
          disabledForegroundColor: Colors.white,
          shadowColor: Colors.transparent,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(12)),
          ),
        ),
      ),
      // checkboxTheme: CheckboxThemeData(
      //   shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
      // ),
      inputDecorationTheme: const InputDecorationTheme(
          filled: true,
          isDense: true,
          enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.transparent)),
          border: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.transparent)),
          focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: AppColors.primary)),
          disabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.transparent)),
          floatingLabelStyle: TextStyle(fontSize: 16)),
      // searchBarTheme: SearchBarThemeData(
      //   backgroundColor: const MaterialStatePropertyAll(Colors.white),
      //   shape: MaterialStatePropertyAll(
      //       RoundedRectangleBorder(borderRadius: BorderRadius.circular(12))),
      //   elevation: const MaterialStatePropertyAll(0),
      //   textStyle: const MaterialStatePropertyAll(
      //     TextStyle(
      //       fontWeight: FontWeight.w500,
      //       fontSize: 16,
      //     ),
      //   ),
      //   hintStyle: const MaterialStatePropertyAll(
      //     TextStyle(
      //       fontWeight: FontWeight.w500,
      //       fontSize: 16,
      //     ),
      //   ),
      // ),
      // dividerTheme: const DividerThemeData(color: AppColors.border),
      appBarTheme: AppBarTheme(
        elevation: 0,
        scrolledUnderElevation: 0,
        backgroundColor: Colors.white,
        titleTextStyle: GoogleFonts.oswald(
          fontSize: 24,
          fontWeight: FontWeight.bold,
          color: Colors.black,
        ),
      ),
      // dialogTheme: const DialogTheme(
      //   backgroundColor: Colors.white,
      //   surfaceTintColor: Colors.white,
      // ),
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        // backgroundColor: AppColors.surface,
        // unselectedItemColor: AppColors.dark,
        // selectedItemColor: AppColors.secondary,
        selectedLabelStyle:
            TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
        unselectedLabelStyle:
            TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
      ),
      bottomSheetTheme:
          const BottomSheetThemeData(backgroundColor: Colors.white));
}
