import 'package:shared_preferences/shared_preferences.dart';

class MySharedPreferences {
  static late SharedPreferences _sharedPreferences;

  init() async {
    _sharedPreferences = await SharedPreferences.getInstance();
  }

  void clearProfile() {
    myId = "";
    fullName = "";
    career = "";
    email = "";
    role = "";
    profilePhoto = "";
    isLogIn = false;
  }

  String get myId => _sharedPreferences.getString(keyMyId) ?? "";

  set myId(String value) {
    _sharedPreferences.setString(keyMyId, value);
  }

  bool get isLogIn => _sharedPreferences.getBool(keyIsLogIn) ?? false;

  set isLogIn(bool value) {
    _sharedPreferences.setBool(keyIsLogIn, value);
  }

  String get fullName => _sharedPreferences.getString(keyFullName) ?? "";

  set fullName(String value) {
    _sharedPreferences.setString(keyFullName, value);
  }

  String get email => _sharedPreferences.getString(keyEmail) ?? "";

  set email(String value) {
    _sharedPreferences.setString(keyEmail, value);
  }

  String get role => _sharedPreferences.getString(keyRole) ?? "";

  set role(String value) {
    _sharedPreferences.setString(keyRole, value);
  }

  String? get career => _sharedPreferences.getString(keyCareer) ?? "";

  set career(String? value) {
    _sharedPreferences.setString(keyCareer, value!);
  }

  String? get profilePhoto => _sharedPreferences.getString(keyProfilePhoto) ?? "";

  set profilePhoto(String? value) {
    _sharedPreferences.setString(keyProfilePhoto, value!);
  }
}

final mySharedPreferences = MySharedPreferences();

const String keyIsLogIn = "key_isLogIn";
const String keyFullName = "key_full_name";
const String keyCareer = "key_career";
const String keyEmail = "key_email";
const String keyRole = "key_role";
const String keyProfilePhoto = "key_profilePhoto";
const String keyMyId = "key_my_id";
