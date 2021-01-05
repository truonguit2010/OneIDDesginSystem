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
  T48M
}

extension ODSTextStyleExtension on ODSTextStyle {

  TextStyle textStyleWithColor({Color color = BrandingColorPalette.ink500}) {
    switch(this) {
      case ODSTextStyle.T48M:
        return TextStyle(
          fontFamily: OneIdFont.Medium.fontFamily,
          fontSize: ODSFontSize.Size48.fontSize,
          color: color
        );
      default:
        return TextStyle();
    }
  }
}
