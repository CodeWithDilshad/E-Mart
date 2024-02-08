import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shad_shop/common_widgets/bg_common.dart';
import 'package:shad_shop/consts/consts.dart';
import 'package:shad_shop/consts/lists.dart';
import 'package:shad_shop/views/catagory/category_details.dart';

class categoryScreen extends StatelessWidget {
  const categoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BgWidget(
      childed: Scaffold(
        appBar: AppBar(
          title: categories.text.white.fontFamily(bold).make(),
        ),
        body: Container(
          padding: EdgeInsets.all(12),
          child: GridView.builder(
            shrinkWrap: true,
            itemCount: 9,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              mainAxisExtent: 200,
              crossAxisSpacing: 8,
              mainAxisSpacing: 8,
            ),
            itemBuilder: ((context, index) {
              return Column(
                children: [
                  Image.asset(
                    categoryImages[index],
                    height: 140,
                    width: 200,
                    fit: BoxFit.cover,
                  ),
                  10.heightBox,
                  "${categoryString[index]}"
                      .text
                      .color(darkFontGrey)
                      .align(TextAlign.center)
                      .make(),
                ],
              )
                  .box
                  .white
                  .rounded
                  .clip(Clip.antiAlias)
                  .outerShadowSm
                  .make()
                  .onTap(() {
                Get.to(() => categoryDetails(title: categoryString[index]));
              });
            }),
          ),
        ),
      ),
    );
  }
}
