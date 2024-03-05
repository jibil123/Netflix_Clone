
import 'package:flutter/material.dart';
import 'package:netflix_clone/screens/news&hot/widgets/appbar.dart';
import 'package:netflix_clone/screens/news&hot/widgets/displaynews.dart';
import 'package:netflix_clone/widgets/resuebale.dart';

class NewsAndHot extends StatefulWidget {
  const NewsAndHot({super.key});

  @override
  State<NewsAndHot> createState() => _NewsAndHotState();
}

class _NewsAndHotState extends State<NewsAndHot> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(left: 15,right: 15),
            child: Column(
              children: [
                SizedBox(
                  height: mediaqueryHeight(0.1, context),
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 1,
                    itemBuilder: (context, index) {
                      return const AppbarScreen();
                    },
                  ),
                ),
                const DisplayHotAndNews(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}