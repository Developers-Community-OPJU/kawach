import 'package:flutter/material.dart' hide Colors;
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kawach/constant/color.dart';

TextStyle h5(
        {Color color = Colors.black,
        FontWeight fontWaight = FontWeight.w400,
        double fontSize = 24}) =>
    TextStyle(color: color, fontWeight: fontWaight, fontSize: fontSize.sp);

TextStyle h6(
        {Color color = Colors.black,
        FontWeight fontWaight = FontWeight.w600}) =>
    TextStyle(color: color, fontWeight: fontWaight, fontSize: 20.sp);

TextStyle subTitle1(
        {Color color = Colors.black,
        FontWeight fontWaight = FontWeight.w400}) =>
    TextStyle(color: color, fontWeight: fontWaight, fontSize: 16.sp);

TextStyle subTitle2({Color color = Colors.black}) =>
    TextStyle(color: color, fontWeight: FontWeight.w500, fontSize: 14.sp);

TextStyle bodyText(
        {Color color = Colors.black,
        FontWeight fontWeight = FontWeight.w400}) =>
    TextStyle(color: color, fontWeight: fontWeight, fontSize: 14.sp);

TextStyle buttonText({Color color = Colors.white}) =>
    TextStyle(color: color, fontWeight: FontWeight.w500, fontSize: 14.sp);

TextStyle caption(
        {Color color = Colors.textLabel,
        FontWeight fontWeight = FontWeight.w400}) =>
    TextStyle(color: color, fontWeight: fontWeight, fontSize: 12.sp);

TextStyle overline({Color color = Colors.textLabel}) =>
    TextStyle(color: color, fontWeight: FontWeight.w400, fontSize: 10.sp);

InputDecoration textFieldDecoration(
        {String? hintText, Widget? suffixIcon, Widget? prffixIcon}) =>
    InputDecoration(
      contentPadding:
          const EdgeInsets.only(left: 16, right: 14, top: 14, bottom: 14),
      fillColor: Colors.textFieldBG,
      filled: true,
      isDense: true,
      hintText: "$hintText",
      hintStyle: bodyText(color: Colors.textLabel),
      prefixIcon: prffixIcon,
      suffixIcon: suffixIcon,
      focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.primary),
          borderRadius: BorderRadius.circular(50)),
      enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(width: 0.5, color: Colors.textFieldBG),
          borderRadius: BorderRadius.circular(50)),
    );

ButtonStyle primaryButtonStyle(
        {Color? backgroundColor, Color? borderColor}) =>
    ButtonStyle(
        overlayColor: WidgetStatePropertyAll(
            backgroundColor == Colors.transparent
                ? Colors.textLabel.withOpacity(0.1)
                : Colors.white.withOpacity(0.15)),
        shape: WidgetStatePropertyAll(RoundedRectangleBorder(
            side: borderColor != null
                ? BorderSide(color: borderColor)
                : BorderSide.none,
            borderRadius: BorderRadius.circular(50))),
        elevation: const WidgetStatePropertyAll(0.0),
        backgroundColor:
            WidgetStatePropertyAll(backgroundColor ?? Colors.primary));