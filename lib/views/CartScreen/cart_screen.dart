import 'package:flutter/material.dart';
import 'package:shad_shop/consts/consts.dart';

class cartScreen extends StatelessWidget {
  const cartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: "The Cart Screen is empty!"
          .text
          .fontFamily(bold)
          .color(darkFontGrey)
          .makeCentered(),
    );
  }
}
