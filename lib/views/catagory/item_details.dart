import 'package:flutter/material.dart';
import 'package:shad_shop/common_widgets/our_button.dart';
import 'package:shad_shop/consts/consts.dart';

class ItemDetails extends StatelessWidget {
  final String? title;
  const ItemDetails({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: title!.text.fontFamily(bold).color(darkFontGrey).make(),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.share),
          ),
          IconButton(
            onPressed: () {
              color(Colors.red);
            },
            icon: Icon(Icons.favorite_outline),
          )
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: Container(
              color: fontGrey,
              padding: EdgeInsets.all(8),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    // Swiper Section
                    VxSwiper.builder(
                      autoPlay: true,
                      height: 350,
                      itemCount: 3,
                      aspectRatio: 16 / 9,
                      itemBuilder: (context, index) {
                        return Image.asset(
                          imgFc5,
                          width: double.infinity,
                          fit: BoxFit.cover,
                        );
                      },
                    ),
                    10.heightBox,
                    // Title and Details of items
                    title!.text
                        .size(16)
                        .color(darkFontGrey)
                        .fontFamily(bold)
                        .make(),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            width: double.infinity,
            height: 60,
            child: ourButton(
              color: redColor,
              onpress: () {},
              textColor: whiteColor,
              title: "Add to Cart",
            ),
          )
        ],
      ),
    );
  }
}
