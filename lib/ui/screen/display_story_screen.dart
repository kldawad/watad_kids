import 'package:flutter/material.dart';
import 'package:watad_kids/ui/widgets/custom_elevated_button.dart';
import 'package:watad_kids/ui/widgets/story_info.dart';
import 'package:watad_kids/utils/style/text_style.dart';
import 'package:watad_kids/utils/theme/material_theme.dart';

class DisplayStoryScreen extends StatelessWidget {
  final int index;
  const DisplayStoryScreen({Key? key, required this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.more_vert),
          ),
        ],
      ),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: Container(
                padding: EdgeInsets.all(10),
                color: kDarkViolet,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      color: Colors.black54,
                      height: 200,
                      child: Hero(
                        tag: "bookCover$index",
                        child: Image.network(
                          "https://i.pinimg.com/originals/55/23/4f/55234ffac0ac4578964c1079c54ba366.png",
                          fit: BoxFit.cover,
                          loadingBuilder: (BuildContext context, Widget child, ImageChunkEvent? loadingProgress) {
                            if (loadingProgress == null) return child;
                            return Center(
                              child: CircularProgressIndicator(
                                value: loadingProgress.expectedTotalBytes != null ? loadingProgress.cumulativeBytesLoaded / loadingProgress.expectedTotalBytes! : null,
                              ),
                            );
                          },
                        ),
                      ),
                    ),
                    Text(
                      "The Midnight War",
                      style: Theme.of(context).textTheme.headline6,
                    ),
                    Text("Mateo Martinez"),
                    StoryInfo(),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                color: Colors.white,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Description",
                      style: Theme.of(context).textTheme.headlineSmall,
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "The Journey of the Noble Gnarble is a number one best-selling ebook that has been adapted into a hardcover book and play. Through rhyming verse and engaging illustrations, the Noble Gnarble teaches kids about perseverance and determination in the face of obstacles. Dream Big!",
                      style: kDefaultBlack,
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    CustomElevatedButton(
                      buttonText: "Start Reading",
                      width: double.infinity,
                      onPressed: () {},
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
