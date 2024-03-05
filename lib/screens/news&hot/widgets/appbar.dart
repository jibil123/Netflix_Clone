import 'package:flutter/material.dart';
import 'package:netflix_clone/widgets/resuebale.dart';

class AppbarScreen extends StatelessWidget {
  const AppbarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: mediaqueryHeight(0.06, context),
          margin: const EdgeInsets.symmetric(horizontal: 5),
          decoration: BoxDecoration(
              border: Border.all(color: whitecolor),
              borderRadius: BorderRadius.circular(90)),
          child: Center(
            child: Text(
              " 🍿 Coming Soon ",
              style: TextStyle(
                color: whitecolor,
              ),
            ),
          ),
        ),
        Container(
          height: mediaqueryHeight(0.06, context),
          margin: const EdgeInsets.symmetric(horizontal: 5),
          decoration: BoxDecoration(
              border: Border.all(color: whitecolor),
              borderRadius: BorderRadius.circular(90)),
          child: Center(
            child: Text(
              " 🔥 Everyone's watching ",
              style: TextStyle(color: whitecolor),
            ),
          ),
        ),
        Container(
          height: mediaqueryHeight(0.06, context),
          margin: const EdgeInsets.symmetric(horizontal: 5),
          decoration: BoxDecoration(
              border: Border.all(color: whitecolor),
              borderRadius: BorderRadius.circular(90)),
          child: Center(
            child: Text(
              " 🎮 Games ",
              style: TextStyle(color: whitecolor),
            ),
          ),
        ),
        Container(
          height: mediaqueryHeight(0.06, context),
          margin: const EdgeInsets.symmetric(horizontal: 5),
          decoration: BoxDecoration(
              border: Border.all(color: whitecolor),
              borderRadius: BorderRadius.circular(90)),
          child: Center(
            child: Text(
              " 🔝 Top Tv Shows ",
              style: TextStyle(color: whitecolor),
            ),
          ),
        ),
        Container(
          height: mediaqueryHeight(0.06, context),
          margin: const EdgeInsets.symmetric(horizontal: 5),
          decoration: BoxDecoration(
              border: Border.all(color: whitecolor),
              borderRadius: BorderRadius.circular(90)),
          child: Center(
            child: Text(
              " 🔝 Top Movies ",
              style: TextStyle(color: whitecolor),
            ),
          ),
        ),
      ],
    );
  }
}