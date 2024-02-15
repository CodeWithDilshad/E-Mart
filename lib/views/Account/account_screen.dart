import 'package:flutter/material.dart';
import 'package:shad_shop/common_widgets/bg_common.dart';
import 'package:shad_shop/consts/consts.dart';
import 'package:shad_shop/consts/lists.dart';
import 'package:shad_shop/views/Account/details_card.dart';

class accountScreen extends StatelessWidget {
  const accountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BgWidget(
      childed: Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              // edit button
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Align(
                  alignment: Alignment.topRight,
                  child: Icon(
                    Icons.edit,
                    color: whiteColor,
                  ),
                ).onTap(() {}),
              ),
              // user profile Section
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Row(
                  children: [
                    Image.asset(
                      imgProfile2,
                      width: 100,
                      fit: BoxFit.cover,
                    ).box.roundedFull.clip(Clip.antiAlias).make(),
                    10.widthBox,
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          "Dilshad Ansari"
                              .text
                              .fontFamily(semibold)
                              .white
                              .make(),
                          5.heightBox,
                          "ansaridilshad@gmail.com".text.white.make(),
                        ],
                      ),
                    ),
                    OutlinedButton(
                      style: OutlinedButton.styleFrom(
                        side: BorderSide(
                          color: whiteColor,
                        ),
                      ),
                      onPressed: () {},
                      child: logOut.text.fontFamily(semibold).white.make(),
                    ),
                  ],
                ),
              ),
              10.heightBox,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  detailsCard(
                    context.screenWidth / 3.4,
                    "00",
                    "In your cart",
                  ),
                  detailsCard(
                    context.screenWidth / 3.4,
                    "00",
                    "In your Wishlist",
                  ),
                  detailsCard(
                    context.screenWidth / 3.4,
                    "00",
                    "Your Orders",
                  ),
                ],
              ),
              // 40.heightBox,
              ListView.separated(
                shrinkWrap: true,
                separatorBuilder: (context, index) {
                  return Divider(
                    color: lightGrey,
                  );
                },
                itemCount: profileButtonsList.length,
                itemBuilder: (BuildContext context, index) {
                  return ListTile(
                    leading: Image.asset(
                      profileButtonsIcon[index],
                      width: 22,
                    ),
                    title: profileButtonsList[index]
                        .text
                        .color(darkFontGrey)
                        .fontFamily(semibold)
                        .make(),
                  );
                },
              )
                  .box
                  .white
                  .margin(EdgeInsets.all(12))
                  .padding(EdgeInsets.symmetric(horizontal: 16))
                  .rounded
                  .shadowSm
                  .make()
                  .box
                  .color(redColor)
                  .make(),
            ],
          ),
        ),
      ),
    );
  }
}
