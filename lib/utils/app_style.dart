import 'package:flutter/material.dart';

abstract class AppStyle {
  static TextStyle styleRegular16(context) {
   return TextStyle(
      color: const Color(0xFF064060),
      fontSize: getRespoxsiveFontSize(context, fontsize: 16),
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w400,
    );
  }

  static  TextStyle styleBold16(context) {
    return TextStyle(
    color: const Color(0xFF4EB7F2),
    fontSize: getRespoxsiveFontSize(context, fontsize: 16),
    fontFamily: 'Montserrat',
    fontWeight: FontWeight.w700,
  );
  } 
  static  TextStyle styleMedium16(context) {
   return TextStyle(
    color: const Color(0xFF064060),
    fontSize: getRespoxsiveFontSize(context, fontsize: 16),
    fontFamily: 'Montserrat',
    fontWeight: FontWeight.w500,
  );
  } 
  static  TextStyle styleMedium20(context) {
    return  TextStyle(
    color: const Color(0xFFFFFFFF),
    fontSize: getRespoxsiveFontSize(context, fontsize: 20),
    fontFamily: 'Montserrat',
    fontWeight: FontWeight.w500,
  );
  }
  static  TextStyle styleSemiBold16(context) {
    return  TextStyle(
    color: const Color(0xFF064060),
    fontSize: getRespoxsiveFontSize(context, fontsize: 16),
    fontFamily: 'Montserrat',
    fontWeight: FontWeight.w600,
  );
  }
  static  TextStyle styleSemiBold20(context) {
    return TextStyle(
    color: const Color(0xFF064060),
    fontSize: getRespoxsiveFontSize(context, fontsize: 20),
    fontFamily: 'Montserrat',
    fontWeight: FontWeight.w600,
  );
  }
  static  TextStyle styleRegular12 (context){
    return  TextStyle(
    color: const Color(0xFFAAAAAA),
    fontSize: getRespoxsiveFontSize(context, fontsize: 12),
    fontFamily: 'Montserrat',
    fontWeight: FontWeight.w400,
  );
  }
  static  TextStyle styleSemiBold24(context) {
    return  TextStyle(
    color: const Color(0xFF4EB7F2),
    fontSize: getRespoxsiveFontSize(context, fontsize: 24),
    fontFamily: 'Montserrat',
    fontWeight: FontWeight.w600,
  );
  }
  static  TextStyle styleRegular14 (context){
    return TextStyle(
    color: const Color(0xFFAAAAAA),
    fontSize: getRespoxsiveFontSize(context, fontsize: 14),
    fontFamily: 'Montserrat',
    fontWeight: FontWeight.w400,
  );
  }
  static  TextStyle styleSemiBold18(context) {
    return TextStyle(
    color: const Color(0xFFFFFFFF),
    fontSize: getRespoxsiveFontSize(context, fontsize: 18),
    fontFamily: 'Montserrat',
    fontWeight: FontWeight.w600,
  );
  }
}

double getRespoxsiveFontSize(context, {required double fontsize}) {
  double scaleFactor = getScaleFactor(context);
  double responsiveFontSize = fontsize * scaleFactor;

  double lowerLimit = fontsize * .8;
  double upperLimit = fontsize * 1.2;

  return responsiveFontSize.clamp(lowerLimit, upperLimit);
}

double getScaleFactor(context) {
  double width = MediaQuery.sizeOf(context).width;
  if (width < 800) {
    return width / 550;
  } else if (width < 1300) {
    return width / 1000;
  } else {
    return width / 1920;
  }
}
