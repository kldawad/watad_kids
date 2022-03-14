import 'package:get/get.dart';

class HomeController extends GetxController {
  static HomeController get to => Get.find();

  final menuImages = [
    "assets/aa.png",
    "assets/b.png",
    "assets/c.png",
  ].obs;

  final myMenu = [
    {
      "leading": "assets/aa.png",
      "Title": "Most Recent Stories",
      "subTitle": "subTitle1",
    },
    {
      "leading": "assets/b.png",
      "Title": "Most Liked Stories",
      "subTitle": "subTitle2",
    },
    {
      "leading": "assets/c.png",
      "Title": "Most Popular Stories",
      "subTitle": "subTitle3",
    }
  ].obs;
}
