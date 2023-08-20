import 'package:day19/mycolor/colors.dart';
import 'package:flutter/material.dart';

class DetailsAppBar extends StatelessWidget {
  const DetailsAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        TextButton(
            onPressed: () {},
            child: Text(
              "Back",
              style: TextStyle(
                color: kPrimaryLight,
                fontSize: 15,
              ),
            )),
        TextButton(
            onPressed: () {},
            child: Text(
              "Search",
              style: TextStyle(
                color: kPrimaryLight,
                fontSize: 15,
              ),
            )),
      ]),
    );
  }
}
