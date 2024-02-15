import 'package:flutter/material.dart';
import 'package:shad_shop/consts/consts.dart';

Widget detailsCard(width, String? count, String? title) {
  return Column(
    children: [
      count!.text.fontFamily(bold).size(16).color(darkFontGrey).make(),
      5.heightBox,
      title!.text.color(darkFontGrey).make(),
    ],
  ).box.white.rounded.height(80).width(width).padding(EdgeInsets.all(4)).make();
}
