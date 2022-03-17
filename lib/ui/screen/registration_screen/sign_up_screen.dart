import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:watad_kids/controller/registration_controller/sign_up_controller.dart';
import 'package:watad_kids/ui/widgets/custom_elevated_button.dart';
import 'package:watad_kids/ui/widgets/custom_text_form_field.dart';
import 'package:watad_kids/utils/theme/material_theme.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Flexible(
              child: Image.asset(
                "assets/clip-teacher-and-student-are-back-to-school.png",
              ),
            ),
            Expanded(
              flex: 2,
              child: Container(
                padding: EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: kMediumViolet,
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(30),
                  ),
                ),
                child: SingleChildScrollView(
                  physics: BouncingScrollPhysics(),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Sign up",
                        style: Theme.of(context).textTheme.headline4,
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      ...SignUpController.to.registrationFields.map((element) {
                        final index = SignUpController.to.registrationFields.indexOf(element);
                        return Obx(
                          () => Padding(
                            padding: const EdgeInsets.symmetric(vertical: 5),
                            child: CustomTextFormField(
                              onTap: () {
                                SignUpController.to.counter.value++;
                                print("myIndex:: ${SignUpController.to.myFocusNodes[index].hasFocus}");
                              },
                              focusNode: SignUpController.to.myFocusNodes[index],
                              label: element,
                              labelColor: SignUpController.to.myFocusNodes[index].hasFocus ? kMediumOrange : Colors.white,
                            ),
                          ),
                        );
                      }).toList(),
                      SizedBox(
                        height: 20,
                      ),
                      CustomElevatedButton(
                        buttonText: "Sign up",
                        width: double.infinity,
                        onPressed: () {},
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Already have an account?"),
                          TextButton(
                            onPressed: () {},
                            child: Text("Sign in"),
                          ),
                        ],
                      ),
                      Row(
                        children: <Widget>[
                          Expanded(child: Divider()),
                          Text(" OR Sign up with "),
                          Expanded(child: Divider()),
                        ],
                      ),
                      // GoogleSignInIconButton(clientId: ""),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
