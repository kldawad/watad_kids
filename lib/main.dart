import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:watad_kids/binding/home_binding.dart';
import 'package:watad_kids/ui/screen/welcome_screen.dart';
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
      initialBinding: HomeBinding(),
      theme: AppThemeData().materialTheme,
      home: WelcomeScreen(),
    );
  }
}
