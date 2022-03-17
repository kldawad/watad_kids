import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:watad_kids/binding/registration_binding/sign_in_binding.dart';
import 'package:watad_kids/binding/registration_binding/sign_up_binding.dart';
import 'package:watad_kids/ui/screen/registration_screen/sign_in_screen.dart';
import 'package:watad_kids/ui/screen/registration_screen/sign_up_screen.dart';
import 'package:watad_kids/ui/widgets/intro_button.dart';
import 'package:watad_kids/utils/theme/material_theme.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              margin: EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: kMediumViolet,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Image.asset("assets/fabulous-fatal-error-1.png"),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "\nDescover your\nDream job Here",
                  style: Theme.of(context).textTheme.headline4,
                  textAlign: TextAlign.center,
                ),
                Text(
                  "\nExplore all the most exciting jobs roles\nbased on your interest and study major",
                  textAlign: TextAlign.center,
                  // style: Theme.of(context).textTheme.headline6,
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Card(
              color: Colors.grey,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.horizontal(
                  left: Radius.circular(10),
                  right: Radius.circular(10),
                ),
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IntroButton(
                    title: "Sign in",
                    leftCardRadius: 10,
                    color: kMediumViolet,
                    onTap: () {
                      Get.to(
                        () => SignInScreen(),
                        binding: SignInBinding(),
                        transition: Transition.rightToLeft,
                        duration: const Duration(milliseconds: 250),
                      );
                    },
                  ),
                  IntroButton(
                    title: "Register",
                    leftCardRadius: 0,
                    color: Colors.grey,
                    onTap: () {
                      Get.to(
                        () => SignUpScreen(),
                        binding: SignUpBinding(),
                        transition: Transition.rightToLeft,
                        duration: const Duration(milliseconds: 250),
                      );
                    },
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }
}
