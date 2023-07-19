import 'package:flutter/material.dart';
import 'package:kasifim_app/gen/colors.gen.dart';
import 'package:kasifim_app/gen/fonts.gen.dart';

class AppText extends Text {
  final Color? color;
  final FontWeight? fontWeight;
  final double fontSize;
  final String? fontFamily;

  AppText.welcomeSubtitle(
    String data, {
    Key? key,
    this.color = ColorName.white,
    this.fontWeight = FontWeight.normal,
    this.fontSize = 14,
    this.fontFamily,
  }) : super(data,
            key: key,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontFamily: FontFamily.proximaNova,
              color: color,
              fontWeight: fontWeight,
              fontSize: fontSize,
            ));

  AppText.welcome(
    String data, {
    Key? key,
    this.color = ColorName.white,
    this.fontWeight = FontWeight.bold,
    this.fontSize = 40,
    this.fontFamily,
  }) : super(data,
            key: key,
            textAlign: TextAlign.center,
            style: TextStyle(
                fontFamily: FontFamily.proximaNova,
                color: color,
                fontWeight: fontWeight,
                fontSize: fontSize));

  AppText.title(
    String data, {
    Key? key,
    this.color = ColorName.black,
    this.fontWeight = FontWeight.normal,
    this.fontSize = 26,
    this.fontFamily,
  }) : super(data,
            key: key,
            textAlign: TextAlign.center,
            style: TextStyle(
                fontFamily: FontFamily.proximaNova,
                color: color,
                fontWeight: fontWeight,
                fontSize: fontSize));

  AppText.large(
    String data, {
    Key? key,
    this.color = ColorName.black,
    this.fontWeight = FontWeight.normal,
    this.fontSize = 24,
    this.fontFamily,
  }) : super(data,
            key: key,
            textAlign: TextAlign.center,
            style: TextStyle(
                fontFamily: FontFamily.proximaNova,
                color: color,
                fontWeight: fontWeight,
                fontSize: fontSize));
  AppText.medium(
    String data, {
    Key? key,
    this.color,
    this.fontWeight = FontWeight.w600,
    this.fontSize = 14,
    this.fontFamily,
  }) : super(data,
            key: key,
            textAlign: TextAlign.left,
            style: TextStyle(
                color: color, fontWeight: fontWeight, fontSize: fontSize));
  AppText.small(
    String data, {
    Key? key,
    this.color,
    this.fontWeight = FontWeight.w600,
    this.fontSize = 12,
    this.fontFamily,
  }) : super(data,
            key: key,
            textAlign: TextAlign.left,
            style: TextStyle(
                color: color, fontWeight: fontWeight, fontSize: fontSize));

  AppText.basic(
    String data, {
    Key? key,
    this.color,
    this.fontWeight = FontWeight.normal,
    this.fontSize = 16,
    this.fontFamily,
  }) : super(data,
            key: key,
            textAlign: TextAlign.left,
            style: TextStyle(
                fontFamily: fontFamily,
                color: color,
                fontWeight: fontWeight,
                fontSize: fontSize));
  AppText.regular(
    String data, {
    Key? key,
    this.color,
    this.fontWeight = FontWeight.normal,
    this.fontSize = 18,
    this.fontFamily,
  }) : super(data,
            key: key,
            textAlign: TextAlign.left,
            style: TextStyle(
                fontFamily: fontFamily,
                color: color,
                fontWeight: fontWeight,
                fontSize: fontSize));
  AppText.italic(String data,
      {Key? key,
      this.color,
      this.fontWeight = FontWeight.normal,
      this.fontSize = 14,
      this.fontFamily})
      : super(data,
            key: key,
            textAlign: TextAlign.left,
            style: TextStyle(
                fontStyle: FontStyle.italic,
                color: ColorName.grey,
                fontWeight: fontWeight,
                fontSize: fontSize));
}
