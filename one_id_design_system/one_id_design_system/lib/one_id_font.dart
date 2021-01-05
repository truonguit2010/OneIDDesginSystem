import 'dart:io';

import 'package:flutter/material.dart';
import 'package:one_id_design_system/branding_color_palette.dart';

enum OneIdFont { Regular, Medium }

const String ROBOTO_REGULAR = "RobotoRegular";
const String ROBOTO_MEDIUM = 'RobotoMedium';

const String SF_PRO_REGULAR = "SFProRegular";
const String SF_PRO_MEDIUM = 'SFProMedium';

extension OneIdFontExtension on OneIdFont {
  String get fontFamily {
    switch (this) {
      case OneIdFont.Medium:
        return Platform.isIOS ? SF_PRO_MEDIUM : ROBOTO_MEDIUM;
      case OneIdFont.Regular:
        return Platform.isIOS ? SF_PRO_REGULAR : ROBOTO_REGULAR;
      default:
        return Platform.isIOS ? SF_PRO_REGULAR : ROBOTO_REGULAR;
    }
  }
}

enum ODSFontSize {
  Size48,
  Size30,
  Size24,
  Size20,
  Size16,
  Size14,
  Size12
}

extension ODSFontSizeExtension on ODSFontSize {
  double get fontSize {
    switch(this) {
      case ODSFontSize.Size48:
        return 48;
      case ODSFontSize.Size30:
        return 30;
      case ODSFontSize.Size24:
        return 24;
      case ODSFontSize.Size20:
        return 20;
      case ODSFontSize.Size16:
        return 16;
      case ODSFontSize.Size14:
        return 14;
      case ODSFontSize.Size12:
        return 12;
      default:
        return 12;
    }
  }
}

enum ODSTextStyle {
  T48M,
  T48R,

  T30M,
  T30R,

  T24M,
  T24R,

  T20M,
  T20R,

  T16M,
  T16R,

  T16M20,
  T16R20,

  T14M,
  T14R,

  T12M,
  T12R,
}

extension ODSTextStyleExtension on ODSTextStyle {

  TextStyle textStyleWithColor({Color color = BrandingColorPalette.ink500}) {
    switch(this) {
      case ODSTextStyle.T48M:
        return TextStyle(
          fontFamily: OneIdFont.Medium.fontFamily,
          fontSize: ODSFontSize.Size48.fontSize,
//          height: 56,
          color: color
        );
      case ODSTextStyle.T48R:
        return TextStyle(
            fontFamily: OneIdFont.Regular.fontFamily,
            fontSize: ODSFontSize.Size48.fontSize,
//            height: 56,
            color: color
        );
      case ODSTextStyle.T30M:
        return TextStyle(
            fontFamily: OneIdFont.Medium.fontFamily,
            fontSize: ODSFontSize.Size30.fontSize,
//            height: 38,
            color: color
        );
      case ODSTextStyle.T30R:
        return TextStyle(
            fontFamily: OneIdFont.Regular.fontFamily,
            fontSize: ODSFontSize.Size30.fontSize,
//            height: 38,
            color: color
        );

      case ODSTextStyle.T24M:
        return TextStyle(
            fontFamily: OneIdFont.Medium.fontFamily,
            fontSize: ODSFontSize.Size24.fontSize,
//            height: 32,
            color: color
        );
      case ODSTextStyle.T24R:
        return TextStyle(
            fontFamily: OneIdFont.Regular.fontFamily,
            fontSize: ODSFontSize.Size24.fontSize,
//            height: 32,
            color: color
        );

      case ODSTextStyle.T20M:
        return TextStyle(
            fontFamily: OneIdFont.Medium.fontFamily,
            fontSize: ODSFontSize.Size20.fontSize,
//            height: 28,
            color: color
        );
      case ODSTextStyle.T20R:
        return TextStyle(
            fontFamily: OneIdFont.Regular.fontFamily,
            fontSize: ODSFontSize.Size20.fontSize,
//            height: 28,
            color: color
        );

      case ODSTextStyle.T16M:
        return TextStyle(
            fontFamily: OneIdFont.Medium.fontFamily,
            fontSize: ODSFontSize.Size16.fontSize,
//            height: 24,
            color: color
        );
      case ODSTextStyle.T16R:
        return TextStyle(
            fontFamily: OneIdFont.Regular.fontFamily,
            fontSize: ODSFontSize.Size16.fontSize,
//            height: 24,
            color: color
        );

      case ODSTextStyle.T16M20:
        return TextStyle(
            fontFamily: OneIdFont.Medium.fontFamily,
            fontSize: ODSFontSize.Size16.fontSize,
//            height: 20,
            color: color
        );
      case ODSTextStyle.T16R20:
        return TextStyle(
            fontFamily: OneIdFont.Regular.fontFamily,
            fontSize: ODSFontSize.Size16.fontSize,
//            height: 20,
            color: color
        );

      case ODSTextStyle.T14M:
        return TextStyle(
            fontFamily: OneIdFont.Medium.fontFamily,
            fontSize: ODSFontSize.Size14.fontSize,
//            height: 20,
            color: color
        );
      case ODSTextStyle.T14R:
        return TextStyle(
            fontFamily: OneIdFont.Regular.fontFamily,
            fontSize: ODSFontSize.Size14.fontSize,
//            height: 20,
            color: color
        );

      case ODSTextStyle.T12M:
        return TextStyle(
            fontFamily: OneIdFont.Medium.fontFamily,
            fontSize: ODSFontSize.Size12.fontSize,
//            height: 16,
            color: color
        );
      case ODSTextStyle.T12R:
        return TextStyle(
            fontFamily: OneIdFont.Regular.fontFamily,
            fontSize: ODSFontSize.Size12.fontSize,
//            height: 16,
            color: color
        );
      default:
        return TextStyle();
    }
  }
}
