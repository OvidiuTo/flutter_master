import 'package:flutter/material.dart';

class NumbersWidget extends StatelessWidget {
  const NumbersWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Followers",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
          VerticalDivider(),
          Text(
            "Following",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
          VerticalDivider(),
          Text(
            "Posts",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
        ],
      );
}
