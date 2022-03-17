import 'package:flutter/material.dart';
import 'package:watad_kids/ui/widgets/custom_elevated_button.dart';
import 'package:watad_kids/ui/widgets/custom_text_form_field.dart';
import 'package:watad_kids/utils/theme/material_theme.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({Key? key}) : super(key: key);
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
                decoration: BoxDecoration(
                  color: kMediumViolet,
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(30),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: SingleChildScrollView(
                    physics: BouncingScrollPhysics(),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Sign in",
                          style: Theme.of(context).textTheme.headline4,
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        CustomTextFormField(
                          label: 'Email',
                          labelColor: Colors.white,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        CustomTextFormField(
                          label: 'Password',
                          labelColor: Colors.white,
                        ),
                        Align(
                          alignment: Alignment.centerRight,
                          child: TextButton(
                            onPressed: () {},
                            child: Text("Forgot Password?"),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        CustomElevatedButton(
                          buttonText: "Sign in",
                          width: double.infinity,
                          onPressed: () {},
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Don't have an account?"),
                            TextButton(
                              onPressed: () {},
                              child: Text("Sign up"),
                            ),
                          ],
                        ),
                        Row(
                          children: <Widget>[
                            Expanded(child: Divider()),
                            Text(" OR Sign in with "),
                            Expanded(child: Divider()),
                          ],
                        ),
                        // GoogleSignInIconButton(clientId: ""),
                      ],
                    ),
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
