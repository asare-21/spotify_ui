import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  BuildContext context;
  AppTheme(this.context);

  ThemeData get theme => Theme.of(context);

  ThemeData apptheme = ThemeData(
    primarySwatch: Colors.blue,
    visualDensity: VisualDensity.adaptivePlatformDensity,
    scaffoldBackgroundColor: coffeBlack,
    textTheme: GoogleFonts.poppinsTextTheme().apply(
      bodyColor: Colors.black,
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: coffeBlack,
      selectedItemColor: Colors.white,
      unselectedItemColor: Colors.white.withOpacity(0.5),
      showUnselectedLabels: true,
      elevation: 0,
      selectedLabelStyle: const TextStyle(
        fontSize: 12,
        fontWeight: FontWeight.w600,
      ),
      unselectedLabelStyle: const TextStyle(
        fontSize: 12,
        fontWeight: FontWeight.w600,
      ),
    ),
  );
}

const yellow = Color(0x0fe0ff4f);
const white = Color(0xffffffff);
const coffeBlack = Color(0xff000814);
const red = Color(0xffFF6663);
const blue = Color(0xff0096c7);
const grey = Color(0xff343a40);
const green = Color(0xff058c42);
