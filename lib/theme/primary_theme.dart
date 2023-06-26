import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

abstract class PrimaryTheme {

  static PrimaryTheme of(BuildContext context) {
    return LightTheme();
  }

  Typography get typography => LightThemeTypography(this);

  //Colors
  late Color blueColor;
  late Color orangeColor;
  late Color darkBlueColor;
  late Color lightPurpleColor;
  late Color lightBlueColor;
  late Color greyColor;
  late Color whiteColor;

  //Typography
  String get heading1BlackFamily => typography.heading1BlackFamily;
  TextStyle get heading1Black => typography.heading1Black;

  String get heading2BlackFamily => typography.heading2BlackFamily;
  TextStyle get heading2Black => typography.heading2Black;

  String get heading2WhiteFamily => typography.heading2WhiteFamily;
  TextStyle get heading2White => typography.heading2White;

  String get heading3BlackFamily => typography.heading3BlackFamily;
  TextStyle get heading3Black => typography.heading3Black;

  String get heading4BlackFamily => typography.heading4BlackFamily;
  TextStyle get heading4Black => typography.heading4Black;

  String get bodyTextNormalBlackFamily => typography.bodyTextNormalBlackFamily;
  TextStyle get bodyTextNormalBlack => typography.bodyTextNormalBlack;

  String get bodyTextSmallBlackFamily => typography.bodyTextSmallBlackFamily;
  TextStyle get bodyTextSmallBlack => typography.bodyTextSmallBlack;

  String get bodyTextExtraSmallBlackFamily => typography.bodyTextExtraSmallBlackFamily;
  TextStyle get bodyTextExtraSmallBlack => typography.bodyTextExtraSmallBlack;





}

class LightTheme extends PrimaryTheme {


  late Color blueColor = const Color(0xFF5246ED);
  late Color orangeColor = const Color(0xFFED4646);
  late Color darkBlueColor = const Color(0xFF000D3E);
  late Color lightPurpleColor = blueColor.withOpacity(0.2);
  late Color lightBlueColor = const Color(0xFFBBD1EA);
  late Color greyColor = lightBlueColor.withOpacity(0.3);
  late Color whiteColor = const Color(0xFFFFFFFF);



  //late Color primaryPurpleColor = const Color(0xFF5246ED);

}

abstract class Typography{

//   {
//   FontWeight.w100: 'Thin',
//   FontWeight.w200: 'ExtraLight',
//   FontWeight.w300: 'Light',
//   FontWeight.w400: 'Regular',
//   FontWeight.w500: 'Medium',
//   FontWeight.w600: 'SemiBold',
//   FontWeight.w700: 'Bold',
//   FontWeight.w800: 'ExtraBold',
//   FontWeight.w900: 'Black',
// }

  String get heading1BlackFamily;
  TextStyle get heading1Black;

  String get heading2BlackFamily;
  TextStyle get heading2Black;

  String get heading2WhiteFamily;
  TextStyle get heading2White;

  String get heading3BlackFamily;
  TextStyle get heading3Black;

  String get heading4BlackFamily;
  TextStyle get heading4Black;

  String get bodyTextNormalBlackFamily;
  TextStyle get bodyTextNormalBlack;

  String get bodyTextSmallBlackFamily;
  TextStyle get bodyTextSmallBlack;

  String get bodyTextExtraSmallBlackFamily;
  TextStyle get bodyTextExtraSmallBlack;
}

class LightThemeTypography extends Typography {

  LightThemeTypography(this.theme);
  final PrimaryTheme theme;

  String get heading1BlackFamily => 'Inter Tight';
  TextStyle get heading1Black => GoogleFonts.getFont(
      "Inter Tight",
      color: theme.darkBlueColor,
      fontWeight: FontWeight.w700,
      fontSize: 22
  );

  String get heading2BlackFamily => 'Inter Tight';
  TextStyle get heading2Black => GoogleFonts.getFont(
      "Inter Tight",
      color: theme.darkBlueColor,
      fontWeight: FontWeight.w700,
      fontSize: 20
  );

  String get heading2WhiteFamily => 'Inter Tight';
  TextStyle get heading2White => GoogleFonts.getFont(
      "Inter Tight",
      color: theme.whiteColor,
      fontWeight: FontWeight.w700,
      fontSize: 20
  );

  String get heading3BlackFamily => 'Inter Tight';
  TextStyle get heading3Black => GoogleFonts.getFont(
      "Inter Tight",
      color: theme.darkBlueColor,
      fontWeight: FontWeight.w700,
      fontSize: 18
  );

  String get heading4BlackFamily => 'Inter Tight';
  TextStyle get heading4Black => GoogleFonts.getFont(
      "Inter Tight",
      color: theme.darkBlueColor,
      fontWeight: FontWeight.w700,
      fontSize: 16,
  );

  String get bodyTextNormalBlackFamily => 'Inter Tight';
  TextStyle get bodyTextNormalBlack => GoogleFonts.getFont(
    'Inter Tight',
    color: theme.darkBlueColor,
    fontWeight: FontWeight.w400,
    fontSize: 14,
  );

  String get bodyTextSmallBlackFamily => 'Inter Tight';
  TextStyle get bodyTextSmallBlack => GoogleFonts.getFont(
    'Inter Tight',
    color: theme.darkBlueColor,
    fontWeight: FontWeight.w400,
    fontSize: 12,
  );

  String get bodyTextExtraSmallBlackFamily => 'Inter Tight';
  TextStyle get bodyTextExtraSmallBlack => GoogleFonts.getFont(
    'Inter Tight',
    color: theme.darkBlueColor,
    fontWeight: FontWeight.w400,
    fontSize: 11,
  );



}