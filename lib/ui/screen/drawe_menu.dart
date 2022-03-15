import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:watad_kids/ui/screen/welcome_screen.dart';
import 'package:watad_kids/utils/style/button_style.dart';

class DrawerMenu extends StatefulWidget {
  const DrawerMenu({Key? key}) : super(key: key);

  @override
  State<DrawerMenu> createState() => _DrawerMenuState();
}

class _DrawerMenuState extends State<DrawerMenu> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          DrawerHeader(
            decoration: BoxDecoration(
              color: Color(0xFF240046),
            ),
            child: Stack(
              children: [
                Center(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Flexible(
                        child: Image.asset("assets/jelly-message-sent-by-character.png"),
                      ),
                      Text(
                        "Khaled Awad",
                        style: Theme.of(context).textTheme.headline5!.copyWith(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                      ),
                    ],
                  ),
                ),
                GestureDetector(
                  onTap: () {},
                  child: CircleAvatar(
                    backgroundColor: Color(0xFF5a189a),
                    child: Icon(
                      Icons.edit,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
          ListTile(
            onTap: () {},
            leading: Icon(
              Icons.favorite,
              color: Colors.white70,
            ),
            title: Text(
              'Favorite',
            ),
          ),
          ListTile(
            onTap: () {},
            leading: Icon(
              Icons.credit_card,
            ),
            title: Text(
              'Subscribe',
            ),
          ),
          Spacer(),
          ElevatedButton.icon(
            onPressed: () {
              Get.to(() => WelcomeScreen());
            },
            label: Text("Logout".tr),
            icon: Icon(Icons.logout),
            style: kLogOut,
          ),
        ],
      ),
    );
  }
}
