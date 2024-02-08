import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:shad_shop/common_widgets/bg_common.dart';
import 'package:shad_shop/consts/consts.dart';
import 'package:shad_shop/views/catagory/item_details.dart';

class categoryDetails extends StatelessWidget {
  final String? title;
  const categoryDetails({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return BgWidget(
      childed: Scaffold(
        appBar: AppBar(
          title: title!.text.fontFamily(bold).white.make(),
        ),
        body: Container(
          padding: EdgeInsets.all(12),
          child: Column(
            children: [
              SingleChildScrollView(
                physics: BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: List.generate(
                    6,
                    (index) => "Kids Cloths"
                        .text
                        .fontFamily(semibold)
                        .size(12)
                        .color(darkFontGrey)
                        .makeCentered()
                        .box
                        .white
                        .size(120, 60)
                        .margin(EdgeInsets.symmetric(horizontal: 4))
                        .rounded
                        .make(),
                  ),
                ),
              ),
              20.heightBox,

              // Itemns Container
              Expanded(
                child: GridView.builder(
                  physics: BouncingScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: 6,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisExtent: 250,
                    mainAxisSpacing: 8,
                    crossAxisSpacing: 8,
                  ),
                  itemBuilder: (context, index) {
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset(
                          imgP5,
                          width: 200,
                          height: 150,
                          fit: BoxFit.cover,
                        ),
                        "Laptop 4GB/64GB"
                            .text
                            .fontFamily(semibold)
                            .color(darkFontGrey)
                            .make(),
                        10.heightBox,
                        "\$600"
                            .text
                            .color(redColor)
                            .fontFamily(bold)
                            .size(16)
                            .make(),
                      ],
                    )
                        .box
                        .roundedSM
                        .white
                        .padding(EdgeInsets.all(12))
                        .margin(EdgeInsets.symmetric(horizontal: 4))
                        .roundedSM
                        .outerShadowSm
                        .make()
                        .onTap(() {
                      Get.to(() => ItemDetails(title: "Farji title"));
                    });
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
