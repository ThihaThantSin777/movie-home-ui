import 'package:flutter/material.dart';
import 'package:movie_home_app_ui/constant/colors.dart';
import 'package:movie_home_app_ui/constant/dimens.dart';

class EasyTextWidget extends StatelessWidget {
  const EasyTextWidget(
      {Key? key,
      required this.text,
      this.fontSize = kFontSize14x,
      this.color = kBlackColor,
      this.fontWeight = FontWeight.w400})
      : super(key: key);
  final String text;
  final double fontSize;
  final Color color;
  final FontWeight fontWeight;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style:
          TextStyle(fontWeight: fontWeight, fontSize: fontSize, color: color),
    );
  }
}
