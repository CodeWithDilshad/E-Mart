import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shad_shop/common_widgets/appLogo_widget.dart';
import 'package:shad_shop/common_widgets/bg_common.dart';
import 'package:shad_shop/common_widgets/custom_textfiel.dart';
import 'package:shad_shop/common_widgets/our_button.dart';
import 'package:shad_shop/consts/consts.dart';

class signUpScreen extends StatefulWidget {
  const signUpScreen({super.key});

  @override
  State<signUpScreen> createState() => _signUpScreenState();
}

class _signUpScreenState extends State<signUpScreen> {
  bool? isChecked = false;

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
              "Join the $appname".text.fontFamily(bold).size(18).white.make(),
              15.heightBox,
              Column(
                children: [
                  customeTextfield(
                    hint: nameHint,
                    title: name,
                  ),
                  customeTextfield(
                    hint: emailHint,
                    title: email,
                  ),
                  customeTextfield(
                    hint: passwordHint,
                    title: password,
                  ),
                  customeTextfield(
                    hint: passwordHint,
                    title: retypePassword,
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: TextButton(
                      onPressed: () {},
                      child: forgetPass.text.blue500.make(),
                    ),
                  ),
                  5.heightBox,
                  Row(
                    children: [
                      Checkbox(
                        checkColor: whiteColor,
                        activeColor: redColor,
                        value: isChecked,
                        onChanged: (newValue) {
                          setState(() {
                            isChecked = newValue;
                          });
                        },
                      ),
                      10.widthBox,
                      Expanded(
                        child: RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: "I agree to the ",
                                style: TextStyle(
                                  fontFamily: regular,
                                  color: fontGrey,
                                ),
                              ),
                              TextSpan(
                                text: termsAndConsitions,
                                style: TextStyle(
                                  fontFamily: regular,
                                  color: redColor,
                                ),
                              ),
                              TextSpan(
                                text: " & ",
                                style: TextStyle(
                                  fontFamily: regular,
                                  color: fontGrey,
                                ),
                              ),
                              TextSpan(
                                text: PrivacyPolicy,
                                style: TextStyle(
                                  fontFamily: regular,
                                  color: redColor,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  5.heightBox,
                  ourButton(
                    title: signUp,
                    color: isChecked == true ? redColor : lightGrey,
                    textColor: whiteColor,
                    onpress: () {},
                  ).box.width(context.screenWidth - 50).make(),
                  10.heightBox,
                  
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      alreadyhaveAnAccount.text.color(fontGrey).make(),
                      login.text.color(redColor).make().onTap(() {
                        Get.back();
                      }),
                    ],
                  )
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
        ),
      ),
    );
  }
}
