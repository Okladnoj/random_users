import 'package:flutter/material.dart';

Widget lineInfo(
  String string, [
  TextAlign textAlign = TextAlign.center,
  Alignment alignment = Alignment.center,
  padding = const EdgeInsets.only(),
]) {
  return Container(
      margin: EdgeInsets.symmetric(vertical: 0.5),
      padding: padding,
      alignment: alignment,
      decoration: BoxDecoration(color: Color(0xFF000000), borderRadius: BorderRadius.circular(5)),
      child: Text(
        string,
        overflow: TextOverflow.ellipsis,
        textAlign: textAlign,
        style: TextStyle(fontWeight: FontWeight.w700, height: 1.1, color: Color(0xFFFFFFFF)),
      ));
}
