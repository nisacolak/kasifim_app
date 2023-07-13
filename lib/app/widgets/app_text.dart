import 'package:flutter/material.dart';
import 'package:kasifim_app/gen/colors.gen.dart';
import 'package:kasifim_app/gen/fonts.gen.dart';

class AppText extends Text {
  final Color? color;
  final FontWeight? fontWeight;
  final double fontSize;

  AppText.title(
    String data, {
    Key? key,
    this.color = ColorName.black,
    this.fontWeight = FontWeight.normal,
    this.fontSize = 26,
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
  }) : super(data,
            key: key,
            textAlign: TextAlign.left,
            style: TextStyle(
                color: color, fontWeight: fontWeight, fontSize: fontSize));

  AppText.bold(
    String data, {
    Key? key,
    this.color = ColorName.black,
    this.fontWeight = FontWeight.normal,
    this.fontSize = 15,
  }) : super(data,
            key: key,
            textAlign: TextAlign.left,
            style: TextStyle(
                color: color, fontWeight: fontWeight, fontSize: fontSize));
}
