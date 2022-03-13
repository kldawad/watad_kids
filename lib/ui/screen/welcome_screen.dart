import 'package:flutter/material.dart';
import 'package:watad_kids/utils/style/button_style.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF240046),
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
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8),
                      child: Text(
                        "\nHappy\nLearning\n",
                        style: Theme.of(context).textTheme.headlineLarge!.copyWith(color: Colors.white),
                      ),
                    ),
                    ElevatedButton(
                      style: kRegistrationButton,
                      onPressed: () {},
                      child: Text("Sign in"),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    ElevatedButton(
                      style: kRegistrationButton,
                      onPressed: () {},
                      child: Text("Sign up"),
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
