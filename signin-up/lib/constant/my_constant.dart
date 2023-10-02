import 'package:flutter/material.dart';

class MyConstant {
  //Field
  static Color primary = const Color(0xFF143F6B);
  static Color orange = const Color(0xFFF55353);
  static Color ligh = const Color(0xFFFEB139);
  static Color active = const Color(0xFFF6F54D);
  static Color info = Color.fromARGB(255, 255, 255, 255);

  TextStyle h1Style() {
    return const TextStyle(
      fontFamily: 'Raleway',
      fontSize: 24,
      color: const Color(0xFFFEB139),
      fontWeight: FontWeight.bold,
    );
  }

  TextStyle h2Style() {
    return const TextStyle(
      fontFamily: 'Raleway',
      fontSize: 20,
      color: Colors.white,
      fontWeight: FontWeight.w700,
    );
  }

  TextStyle h3Style() {
    return const TextStyle(
      fontFamily: 'Raleway',
      fontSize: 16,
      color: Colors.white,
      fontWeight: FontWeight.normal,
    );
  }
  
}