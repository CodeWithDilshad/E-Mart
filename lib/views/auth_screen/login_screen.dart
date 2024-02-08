import 'package:flutter/material.dart';
import 'package:shad_shop/common_widgets/appLogo_widget.dart';
import 'package:shad_shop/common_widgets/bg_common.dart';
import 'package:shad_shop/common_widgets/custom_textfiel.dart';
import 'package:shad_shop/common_widgets/our_button.dart';
import 'package:shad_shop/consts/consts.dart';
import 'package:shad_shop/consts/lists.dart';
import 'package:shad_shop/views/auth_screen/signup_screen.dart';
import 'package:get/get.dart';
import 'package:shad_shop/views/homeScreen/home.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BgWidget(
        childed: Scaffold(
            resizeToAvoidBottomInset: false,
            body: Center(
              child: Column(
                // crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  (context.screenHeight * 0.1).heightBox,
                  applogoImage(),
                  10.heightBox,
                  "Log into $appname"
                      .text
                      .fontFamily(bold)
                      .size(18)
                      .white
                      .make(),
                  15.heightBox,
                  Column(
                    children: [
                      customeTextfield(
                        hint: emailHint,
                        title: email,
                      ),
                      customeTextfield(
                        hint: passwordHint,
                        title: password,
                      ),
                      Align(
                        alignment: Alignment.centerRight,
                        child: TextButton(
                          onPressed: () {},
                          child: forgetPass.text.blue500.make(),
                        ),
                      ),
                      5.heightBox,
                      // ourButton()
                      ourButton(
                          title: login,
                          color: redColor,
                          textColor: whiteColor,
                          onpress: () {
                            Get.to(() => Home());
                          }).box.width(context.screenWidth - 50).make(),
                      5.heightBox,
                      createnewaccount.text.color(fontGrey).make(),
                      5.heightBox,
                      ourButton(
                          title: signUp,
                          color: lightGolden,
                          textColor: redColor,
                          onpress: () {
                            Get.to(() => signUpScreen());
                          }).box.width(context.screenWidth - 50).make(),
                      10.heightBox,
                      loginWith.text.color(fontGrey).make(),
                      5.heightBox,
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: List.generate(
                          3,
                          (index) => Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: CircleAvatar(
                              backgroundColor: lightGrey,
                              radius: 25,
                              child: Image.asset(
                                socialIcons[index],
                                width: 35,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  )
                      .box
                      .white
                      .rounded
                      .padding(EdgeInsets.all(16))
                      .width(context.screenWidth - 70)
                      .shadowSm
                      .make(),
                ],
              ),
            )));
  }
}
