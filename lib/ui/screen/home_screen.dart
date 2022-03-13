import 'package:flutter/material.dart';
import 'package:watad_kids/controller/home_controller.dart';
import 'package:watad_kids/ui/widgets/slider_indicator.dart';
import 'package:watad_kids/utils/theme/colors.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);

  final imageUrl = [
    "https://www.redbytes.in/wp-content/uploads/2016/07/15-Best-Free-Reading-Apps-For-Kids.jpg",
    "https://www.redbytes.in/wp-content/uploads/2016/07/15-Best-Free-Reading-Apps-For-Kids.jpg",
    "https://www.redbytes.in/wp-content/uploads/2016/07/15-Best-Free-Reading-Apps-For-Kids.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
      ),
      appBar: AppBar(
        // elevation: 0,
        // backgroundColor: Colors.transparent,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.favorite,
              color: kThemeOrange,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(8, 15, 8, 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(
                    "assets/girl_reading.png",
                  ),
                  Text(
                    "Watad Kids",
                    style: Theme.of(context).textTheme.headlineLarge!.copyWith(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                  Text(
                    "Kids Stories to have fun!",
                    style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                height: 200,
                child: Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    PageView.builder(
                      itemCount: imageUrl.length,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(20.0),
                            child: Image.network(
                              imageUrl[index],
                              fit: BoxFit.cover,
                            ),
                          ),
                        );
                      },
                    ),
                    SliderIndicator(),
                  ],
                ),
              ),
            ),
            ListView.separated(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: HomeController.to.menuImages.length,
              separatorBuilder: (BuildContext context, int index) => const Divider(
                indent: 10,
                endIndent: 10,
                color: Colors.grey,
              ),
              itemBuilder: (BuildContext context, int index) {
                return ListTile(
                  onTap: () {},
                  leading: Image.asset(
                    HomeController.to.menuImages[index],
                    width: 100,
                  ),
                  title: Text(
                    "Title",
                    style: TextStyle(color: Colors.white),
                  ),
                  subtitle: Text(
                    "Subtitle",
                    style: TextStyle(color: Colors.grey),
                  ),
                  trailing: Icon(
                    Icons.chevron_right,
                    color: Colors.white,
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
