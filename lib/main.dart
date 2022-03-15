import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:watad_kids/binding/sign_up_binding.dart';
import 'package:watad_kids/ui/screen/registration_screen/sign_up_screen.dart';
import 'package:watad_kids/utils/shared_prefrences.dart';
import 'package:watad_kids/utils/theme/material_theme.dart';

final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await mySharedPreferences.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      // locale: Locale('ar'),
      initialBinding: SignUpBinding(),
      theme: AppThemeData().materialTheme,
      home: SignUpScreen(),
    );
  }
}
