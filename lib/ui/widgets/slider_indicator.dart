import 'package:flutter/material.dart';

class SliderIndicator extends StatelessWidget {
  const SliderIndicator({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 15,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
            backgroundColor: Colors.blue,
            radius: 5,
          ),
          SizedBox(
            width: 3,
          ),
          CircleAvatar(
            backgroundColor: Colors.blue,
            radius: 5,
          ),
          SizedBox(
            width: 3,
          ),
          CircleAvatar(
            backgroundColor: Colors.blue,
            radius: 5,
          ),
        ],
      ),
    );
  }
}
