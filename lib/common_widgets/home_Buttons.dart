import 'package:flutter/material.dart';
import 'package:shad_shop/consts/consts.dart';

Widget homeIcons({
  height,
  width,
  icons,
  String? title,
  onPress,
}) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Image.asset(
        icons,
        width: 26,
      ),
      10.heightBox,
      title!.text.fontFamily(semibold).color(darkFontGrey).make(),
    ],
  ).box.white.rounded.size(width, height).shadowSm.make();
}
