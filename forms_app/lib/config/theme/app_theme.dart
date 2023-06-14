import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  ThemeData getTheme() {
    const seedColor = Colors.deepPurple;

    return ThemeData(
      useMaterial3: true,
      colorSchemeSeed: seedColor,
      visualDensity: VisualDensity.adaptivePlatformDensity,

      ///* ListTilesTheme
      listTileTheme: const ListTileThemeData(
        visualDensity: VisualDensity.compact,
        iconColor: seedColor,
        horizontalTitleGap: 10,
      ),

      /// FontFamily
      fontFamily: GoogleFonts.poppins().fontFamily,
    );
  }
}
