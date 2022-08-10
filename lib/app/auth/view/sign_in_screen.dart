import 'package:flutter/material.dart';
import 'package:recipe/app/core/size_config.dart';
import 'package:recipe/widgets/custom_rounded_button.dart';
import 'package:recipe/widgets/custom_text.dart';

class SignInScreen extends StatelessWidget {
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
            top: defaultSize * 16,
            left: defaultSize * 10,
            child: Column(
              children: [
                CustomText(
                  text: 'Daily Recipe',
                  fontSize: defaultSize * 4.1,
                  color: Colors.white,
                ),
                SizedBox(
                  height: defaultSize * 6,
                ),
                CustomText(
                  text: 'Sign In',
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: defaultSize * 2,
                ),
                SizedBox(height: defaultSize*5,),
                TextFormField(
                )
              ],
            ),
          ),
          Positioned(
            bottom: 20,
            child: ButtonWidget(),
          ),
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
                // Get.to(SignUpScreen());
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
                // Get.to(SignInScreen());
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
