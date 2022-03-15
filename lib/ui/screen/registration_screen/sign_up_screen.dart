import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:watad_kids/controller/sign_up_controller.dart';
import 'package:watad_kids/ui/widgets/custom_text_form_field.dart';
import 'package:watad_kids/utils/theme/material_theme.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  Widget buildRegistrationFields({
    required String title,
    required FocusNode focusNode,
    required int index,
    required List<TextEditingController> controller,
  }) {
    return CustomTextFormField(
      obscureText: index == 3 || index == 4 ? true : false,
      controller: controller[index],
      onTap: () {
        SignUpController.to.myFocusNodes.refresh();
      },
      validator: (String? value) {
        if (index == 0) {
          if (value!.isEmpty) {
            return "حقل الإسم مطلوب";
          }
        } else if (index == 1) {
          if (value!.isEmpty) {
            return "إختر الوظيفة";
          }
        } else if (index == 2) {
          if (value!.isEmpty) {
            return "أدخل بريدك الألكتروني";
          } else if (!SignUpController.to.emailRegExp.value.hasMatch(value)) {
            return "بريد ألكتروني غير معروف";
          }
        } else if (index == 3) {
          if (value!.isEmpty) {
            return "أدخل كلمة المرور";
          } else if (value.length < 6) {
            return "يجب أن تحتوي كلمة المرور على 6 رموز على الأقل";
          }
        } else if (index == 4) {
          if (value!.isEmpty) {
            return "أدخل كلمة المرور";
          } else if (value != controller[3].text) {
            return "كلمة المرور غير متطابقة";
          }
        } else {
          return null;
        }
        return null;
      },
      focusNode: focusNode,
      label: title,
      labelStyle: TextStyle(color: focusNode.hasFocus ? Colors.orange : Colors.white),
      keyboardType: index == 0
          ? TextInputType.name
          : index == 2
              ? TextInputType.emailAddress
              : null,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Scaffold(
        body: Column(
          children: [
            Expanded(
              child: Container(
                color: Colors.white,
              ),
            ),
            Expanded(
              flex: 2,
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                decoration: BoxDecoration(
                  color: kMediumViolet,
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(30),
                  ),
                ),
                child: SingleChildScrollView(
                  child: Form(
                    key: SignUpController.to.formKey,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Text(
                          " Sign up ",
                          style: Theme.of(context).textTheme.headline5,
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        ...SignUpController.to.registrationFields.map<Widget>((String field) {
                          final index = SignUpController.to.registrationFields.indexOf(field);
                          return buildRegistrationFields(
                            title: field,
                            focusNode: SignUpController.to.myFocusNodes[index],
                            index: index,
                            controller: SignUpController.to.myTextEditingControllers,
                          );
                        }).toList(),
                        SizedBox(
                          height: 15,
                        ),
                        OutlinedButton(
                          child: Text('Sign up'),
                          onPressed: () {
                            if (SignUpController.to.formKey.currentState!.validate()) {
                              SignUpController.to.unFocusFields();
                            }
                          },
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            Text("Already have an account?"),
                            TextButton(
                              child: Text("Sign in"),
                              onPressed: () {},
                            ),
                          ],
                        ),
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
