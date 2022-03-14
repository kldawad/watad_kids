import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:watad_kids/utils/style/button_style.dart';
import 'package:watad_kids/utils/style/text_style.dart';

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
              color: Colors.white,
            ),
            title: Text(
              'Favorite',
              style: kDefaultWhite,
            ),
          ),
          ListTile(
            onTap: () {},
            leading: Icon(
              Icons.credit_card,
              color: Colors.white,
            ),
            title: Text(
              'Subscribe',
              style: kDefaultWhite,
            ),
          ),
          Spacer(),
          ElevatedButton.icon(
            onPressed: () {},
            label: Text("Logout".tr),
            icon: Icon(Icons.logout),
            style: kLogOut,
          ),
        ],
      ),
    );
  }
}
