import 'package:flutter/material.dart';
import 'package:shad_shop/consts/consts.dart';

Widget BgWidget({Widget? childed}) {
  return Container(
    decoration: BoxDecoration(
      image:
          DecorationImage(image: AssetImage(imgBackground), fit: BoxFit.fill),
    ),
    child: childed, 
  );
}
