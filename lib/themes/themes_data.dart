import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ThemesChanger extends ChangeNotifier {
  ThemeData _themeData = ThemeData();

  ThemeData get getTheme => _themeData;

  ThemesChanger({required bool isDark}) {
    _themeData = darkTheme;
    if (!isDark) {
      _themeData = lightTheme;
      notifyListeners();
    }
  }

  void themeModeSwitcher() async {
    final prefs = await SharedPreferences.getInstance();

    if (_themeData == darkTheme) {
      _themeData = lightTheme;
      log('light-mode');
      prefs.setBool('isDark', false);
    } else {
      _themeData = darkTheme;
      log('dark-mode');
      prefs.setBool('isDark', true);
    }
    notifyListeners();
  }


  final darkTheme = ThemeData.dark(useMaterial3: true).copyWith(
    textTheme: GoogleFonts.poppinsTextTheme(ThemeData.dark().textTheme),
    primaryTextTheme: GoogleFonts.poppinsTextTheme(ThemeData.dark().textTheme),
    colorScheme: ColorScheme.fromSeed(
      seedColor: Colors.deepPurple,
      brightness: Brightness.dark,
    ),
  );

  final lightTheme = ThemeData.light(useMaterial3: true).copyWith(
    textTheme: GoogleFonts.poppinsTextTheme(ThemeData.light().textTheme),
    primaryTextTheme: GoogleFonts.poppinsTextTheme(ThemeData.light().textTheme),
    colorScheme: ColorScheme.fromSeed(
      seedColor: Colors.deepPurple,
      brightness: Brightness.light,
    ),
  );
}
