import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:watad_kids/ui/screen/home_screen.dart';
import 'package:watad_kids/ui/screen/registration_screen/sign_up_screen.dart';
import 'package:watad_kids/ui/widgets/custom_elevated_button.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Text(
                      "\n Happy\n Learning\n",
                      style: Theme.of(context).textTheme.headlineLarge!.copyWith(color: Colors.white),
                    ),
                    CustomElevatedButton(
                      buttonText: "Sign in",
                      width: 150,
                      onPressed: () {
                        Get.to(() => HomeScreen());
                      },
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    CustomElevatedButton(
                      buttonText: "Sign up",
                      width: 150,
                      onPressed: () {
                        Get.to(() => SignUpScreen());
                      },
                    ),
                  ],
                ),
                Image.asset(
                  "assets/flame-132.png",
                  width: 200,
                ),
              ],
            ),
            Spacer(),
            Image.asset("assets/flame-1704.png"),
          ],
        ),
      ),
    );
  }
}
