import 'package:flutter/material.dart';
import 'package:watad_kids/utils/style/text_style.dart';
import 'package:watad_kids/utils/theme/material_theme.dart';

class StoryInfo extends StatelessWidget {
  const StoryInfo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Column(
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
              decoration: BoxDecoration(
                color: kDarkOrange,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Text("420 L"),
            ),
            Text(
              "Score",
              style: kDefaultGrey,
            ),
          ],
        ),
        Column(
          children: [
            Row(
              children: [
                Icon(
                  Icons.star,
                  color: Colors.yellow,
                ),
                Text("4.5"),
              ],
            ),
            Text(
              "Rate",
              style: kDefaultGrey,
            ),
          ],
        ),
        Column(
          children: [
            Row(
              children: [
                Icon(
                  Icons.menu_book,
                  color: Colors.green,
                ),
                Text(" 2 "),
              ],
            ),
            Text(
              "Pages",
              style: kDefaultGrey,
            ),
          ],
        ),
      ],
    );
  }
}
