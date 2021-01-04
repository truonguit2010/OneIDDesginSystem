

import 'package:flutter/material.dart';

///
/// https://ds.id.vin/691ac4900/v/5405/p/39569a-color
///
class BrandingColorPalette {

  ///
  /// Brand
  ///
  static const Color branda500 = Color(0xFFDC2323);
  static const Color brandb500 = Color(0xFF355587);

  ///
  /// Primary
  ///
  static const Color primarya500 = Color(0xFF2F6BFF);
  static const Color primarya400 = Color(0xCC2F6BFF);
  static const Color primarya300 = Color(0x4C2F6BFF);
  static const Color primarya200 = Color(0x192F6BFF);
  static const Color primarya100 = Color(0x0C2F6BFF);


  ///
  /// Base Color Palette
  /// This palette is fixed and neutral, used largely in the product interface.
  ///
  /// Ink
  ///
  /// Main text color, can be used in other elements such as border, disabled item, scrim, etc
  static const Color ink500 = Color(0xFF22313F);
  static const Color ink400 = Color(0x7F011222);
  static const Color ink300 = Color(0x4C011222);
  static const Color ink200 = Color(0x19011222);
  static const Color ink100 = Color(0x0C011222);

  ///
  /// Black
  ///
  static const Color black500 = Color(0xCC000000);
  static const Color black400 = Color(0xB2000000);
  static const Color black300 = Color(0x66000000);
  static const Color black200 = Color(0x4C000000);
  static const Color black100 = Color(0x19000000);

  ///
  /// White
  ///
  static const Color white500 = Color(0xFFFFFFFF);
  static const Color white400 = Color(0xB2FFFFFF);
  static const Color white300 = Color(0x66FFFFFF);
  static const Color white200 = Color(0x4CFFFFFF);
  static const Color white100 = Color(0x19FFFFFF);

  ///
  /// Functional Color Palette
  /// This palette is fixed, used in the features that can express emotions.
  ///
  /// Blue
  /// Emotions [Useful]: display information content.
  ///
  static const Color blue500 = Color(0xFF2F6BFF);
  static const Color blue400 = Color(0xCC2F6BFF);
  static const Color blue300 = Color(0x4C2F6BFF);
  static const Color blue200 = Color(0x192F6BFF);
  static const Color blue100 = Color(0x0C2F6BFF);

  ///
  /// Green
  /// Emotion [Positive]: display successful content.
  ///
  static const Color green500 = Color(0xFF00BC3C);
  static const Color green400 = Color(0xCC00BC3C);
  static const Color green300 = Color(0x4C00BC3C);
  static const Color green200 = Color(0x1900BC3C);
  static const Color green100 = Color(0x0C00BC3C);

  ///
  /// Orange
  /// Emotion [Careful]: display warning content.
  ///
  static const Color orange500 = Color(0xFFFF821E);
  static const Color orange400 = Color(0xCCFF821E);
  static const Color orange300 = Color(0x4CFF821E);
  static const Color orange200 = Color(0x19FF821E);
  static const Color orange100 = Color(0x0CFF821E);

  ///
  /// Red
  /// Emotion [Stressful]: display dangerous content.
  ///
  static const Color red500 = Color(0xFFE60A32);
  static const Color red400 = Color(0xCCE60A32);
  static const Color red300 = Color(0x4CE60A32);
  static const Color red200 = Color(0x19E60A32);
  static const Color red100 = Color(0x0CE60A32);

  ///
  /// Support Color
  ///
  static const Color background_light = Color(0xFFFAFDFF);
  static const Color background_dark =  Color(0xFFF2F3F4);
  static const Color placeholder =      Color(0xFFE8EDF3);
//  static const Color Skeleton = Color(0xFFFAFDFF);
//  static const Color gradient50top = Color(0xFFFAFDFF);
//  static const Color gradient50bot = Color(0xFFFAFDFF);

  static const Gradient Skeleton = LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [
      Color.fromARGB(255, 230, 231, 233),
      Color.fromARGB(255, 249, 249, 249)
    ]
  );

  static const Gradient gradient50top = LinearGradient(
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
      colors: [
        Color.fromARGB(127, 0, 0, 0),
        Color.fromARGB(255, 0, 0, 0)
      ]
  );

  static const Gradient gradient50bot = LinearGradient(
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
      colors: [
        Color.fromARGB(127, 0, 0, 0),
        Color.fromARGB(255, 0, 0, 0)
      ]
  );
}

extension EXColor on Color {
  String get hexValue {
    return '0x${value.toRadixString(16).padLeft(8, '0').toUpperCase()}';
  }
}

//