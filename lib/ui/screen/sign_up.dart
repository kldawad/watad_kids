// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
// import 'package:watad_table/binding/registration_binding/sign_in_binding.dart';
// import 'package:watad_table/controller/registration_controller/sign_up_controller.dart';
// import 'package:watad_table/ui/screen/registration_screen/sign_in_screen.dart';
// import 'package:watad_table/ui/widget/custom_buttons/custom_outlied_button.dart';
// import 'package:watad_table/ui/widget/custom_buttons/custom_text_button.dart';
// import 'package:watad_table/ui/widget/custom_text_field.dart';
// import 'package:watad_table/ui/widget/my_spinner.dart';
// import 'package:watad_table/utils/style/text_style.dart';
//
// class SignUpScreen extends StatefulWidget {
//   const SignUpScreen({Key? key}) : super(key: key);
//
//   @override
//   State<SignUpScreen> createState() => _SignUpScreenState();
// }
//
// class _SignUpScreenState extends State<SignUpScreen> {
//   final _formKey = GlobalKey<FormState>();
//   late List<FocusNode> myFocusNodes;
//   late List<TextEditingController> myTextEditingControllers;
//
//   void unFocusFields() {
//     for (var element in myFocusNodes) {
//       final index = myFocusNodes.indexOf(element);
//       if (myFocusNodes[index].hasFocus) {
//         myFocusNodes[index].unfocus();
//       }
//     }
//   }
//
//   Widget buildRegistrationFields({
//     required String title,
//     required FocusNode focusNode,
//     required TextDirection textDirection,
//     required bool readOnly,
//     required int index,
//     required List<TextEditingController> controller,
//   }) {
//     return CustomTextFormField(
//       obscureText: index == 3 || index == 4 ? true : false,
//       controller: controller[index],
//       readOnly: readOnly,
//       onTap: index == 1
//           ? () {
//               Get.defaultDialog(
//                 title: "الوظيفة",
//                 radius: 5,
//                 titleStyle: kDefaultWhite,
//                 backgroundColor: Color(0xFF7F2854),
//                 content: Column(
//                   children: SignUpController.to.role.map<Widget>((String role) {
//                     return roleBox(
//                       index: SignUpController.to.role.indexOf(role),
//                       role: role,
//                       controller: controller[1],
//                     );
//                   }).toList(),
//                 ),
//               );
//             }
//           : null,
//       validator: (String? value) {
//         if (index == 0) {
//           if (value!.isEmpty) {
//             return "حقل الإسم مطلوب";
//           }
//         } else if (index == 1) {
//           if (value!.isEmpty) {
//             return "إختر الوظيفة";
//           }
//         } else if (index == 2) {
//           if (value!.isEmpty) {
//             return "أدخل بريدك الألكتروني";
//           } else if (!SignUpController.to.emailRegExp.value.hasMatch(value)) {
//             return "بريد ألكتروني غير معروف";
//           }
//         } else if (index == 3) {
//           if (value!.isEmpty) {
//             return "أدخل كلمة المرور";
//           } else if (value.length < 6) {
//             return "يجب أن تحتوي كلمة المرور على 6 رموز على الأقل";
//           }
//         } else if (index == 4) {
//           if (value!.isEmpty) {
//             return "أدخل كلمة المرور";
//           } else if (value != controller[3].text) {
//             return "كلمة المرور غير متطابقة";
//           }
//         } else {
//           return null;
//         }
//         return null;
//       },
//       textDirection: textDirection,
//       focusNode: focusNode,
//       label: title,
//       labelStyle: TextStyle(color: focusNode.hasFocus ? Theme.of(context).primaryColor : Colors.black),
//       keyboardType: index == 0
//           ? TextInputType.name
//           : index == 2
//               ? TextInputType.emailAddress
//               : null,
//     );
//   }
//
//   Widget roleBox({required String role, required int index, required TextEditingController controller}) {
//     return Padding(
//       padding: const EdgeInsets.symmetric(vertical: 3),
//       child: ListTile(
//         title: Text(
//           role,
//           style: kDefaultWhite,
//         ),
//         onTap: () {
//           controller.text = role;
//           Get.back();
//         },
//         tileColor: Theme.of(context).primaryColor,
//       ),
//     );
//   }
//
//   @override
//   void initState() {
//     myFocusNodes = List.generate(5, (index) => FocusNode());
//     myTextEditingControllers = List.generate(5, (index) => TextEditingController());
//     for (var element in myFocusNodes) {
//       myFocusNodes[myFocusNodes.indexOf(element)].addListener(() {
//         setState(() {});
//       });
//     }
//     super.initState();
//   }
//
//   @override
//   void dispose() {
//     for (var element in myFocusNodes) {
//       myFocusNodes[myFocusNodes.indexOf(element)].dispose();
//     }
//     for (var element in myTextEditingControllers) {
//       myTextEditingControllers[myTextEditingControllers.indexOf(element)].dispose();
//     }
//     super.dispose();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SafeArea(
//         child: Center(
//           child: SingleChildScrollView(
//             physics: BouncingScrollPhysics(),
//             child: Padding(
//               padding: const EdgeInsets.symmetric(horizontal: 10),
//               child: Form(
//                 key: _formKey,
//                 child: Column(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   crossAxisAlignment: CrossAxisAlignment.stretch,
//                   children: [
//                     Image.asset(
//                       "assets/images/watad_logo.png",
//                       height: 60,
//                     ),
//                     SizedBox(
//                       height: 20,
//                     ),
//                     Text(
//                       "Sign up",
//                       style: Theme.of(context).textTheme.headline5,
//                     ),
//                     SizedBox(
//                       height: 10,
//                     ),
//                     ...SignUpController.to.registrationFields.map<Widget>((String field) {
//                       return buildRegistrationFields(
//                         textDirection: SignUpController.to.registrationFields.indexOf(field) > 1 ? TextDirection.ltr : TextDirection.rtl,
//                         title: field,
//                         focusNode: myFocusNodes[SignUpController.to.registrationFields.indexOf(field)],
//                         readOnly: SignUpController.to.registrationFields.indexOf(field) == 1 ? true : false,
//                         index: SignUpController.to.registrationFields.indexOf(field),
//                         controller: myTextEditingControllers,
//                       );
//                     }).toList(),
//                     SizedBox(
//                       height: 15,
//                     ),
//                     CustomOutlinedButton(
//                       title: 'أنشاء حساب',
//                       onPressed: () {
//                         if (_formKey.currentState!.validate()) {
//                           unFocusFields();
//                           SignUpController.to.signUpWithFirebase(
//                             fullName: myTextEditingControllers[0].text,
//                             role: myTextEditingControllers[1].text,
//                             email: myTextEditingControllers[2].text,
//                             password: myTextEditingControllers[3].text,
//                           );
//                         }
//                       },
//                     ),
//                     SizedBox(
//                       height: 10,
//                     ),
//                     Row(
//                       children: [
//                         Text("هل لديك حساب بالفعل؟"),
//                         CustomTextButton(
//                           title: "تسجيل الدخول",
//                           onPressed: () {
//                             Get.offAll(() => SignInScreen(), binding: SignInBinding());
//                           },
//                         ),
//                       ],
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
