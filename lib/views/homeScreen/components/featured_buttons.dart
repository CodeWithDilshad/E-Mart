import 'package:flutter/material.dart';
import 'package:shad_shop/consts/consts.dart';

Widget featuredButtons({String? title,icon }) {
  return Row(
    children: [
      Image.asset(
        icon,
        width: 60,
        fit: BoxFit.fill,
      ),
      10.widthBox,
      title!.text.color(darkFontGrey).fontFamily(semibold).make(),
    ],
  )
      .box
      .roundedSM
      .width(200)
      .margin(EdgeInsets.symmetric(horizontal: 4))
      .padding(EdgeInsets.all(4))
      .outerShadowSm
      .make();
}
