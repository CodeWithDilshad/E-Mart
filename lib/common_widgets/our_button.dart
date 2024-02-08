// import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:shad_shop/consts/consts.dart';

Widget ourButton({onpress, /*String*/ String? title, color, textColor}) {
  return ElevatedButton(
    style: ElevatedButton.styleFrom(
      primary: color,
      padding: EdgeInsets.all(12),
    ),
    onPressed: onpress,
    // child: title.text.color(textColor).fontFamily(bold).make(),
    child: title!.text.color(textColor).fontFamily(bold).make(),
  );
}
