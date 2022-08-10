import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:recipe/app/auth/view/sign_in_screen.dart';
import 'package:recipe/app/auth/view/sign_up_screen.dart';
import 'package:recipe/app/core/size_config.dart';
import 'package:recipe/widgets/custom_rounded_button.dart';
import 'package:recipe/widgets/custom_text.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    double defaultSize = SizeConfig.defaultSize;
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            'assets/images/splash_screen.png',
            width: SizeConfig.screenWidth,
            fit: BoxFit.fill,
          ),
          Positioned(
            left: 0,
            top: SizeConfig.screenHeight * 0.4,
            right: 0,
            child: Column(
              children: [
                CustomText(
                  text: 'Daily Recipe',
                  fontSize: defaultSize * 4.1,
                  color: Colors.white,
                ),
                SizedBox(
                  height: defaultSize * 2.5,
                ),
                CustomText(
                  text: 'Cooking Done The Easy Way',
                  color: Color(0xff7B7B7B),
                )
              ],
            ),
          ),
          Positioned(bottom: 20, child: ButtonWidget())
        ],
      ),
    );
  }
}

class ButtonWidget extends StatelessWidget {
  const ButtonWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double defaultSize = SizeConfig.defaultSize;
    return SizedBox(
      width: SizeConfig.screenWidth,
      child: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20, bottom: 20),
        child: Column(
          children: [
            CustomRoundedButton(
              width: SizeConfig.screenWidth,
              onPressed: () {
                Get.to(SignUpScreen());
              },
              child: CustomText(
                text: 'Register',
                color: Colors.white,
                fontSize: defaultSize * 1.6,
              ),
              color: Color(0xffF55A00),
            ),
            CustomRoundedButton(
              width: SizeConfig.screenWidth,
              onPressed: () {
                Get.to(SignInScreen());
              },
              child: CustomText(
                text: 'Sign in',
                fontSize: defaultSize * 1.6,
                color: Colors.white,
              ),
              color: Colors.transparent,
            ),
          ],
        ),
      ),
    );
  }
}
