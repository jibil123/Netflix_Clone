// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:netflix_clone/screens/home/apiScreens/mainImg.dart';
import 'package:netflix_clone/screens/home/apiScreens/popularMov.dart';
import 'package:netflix_clone/screens/home/apiScreens/topRated.dart';
import 'package:netflix_clone/screens/myNetfix/notification.dart';
import 'package:netflix_clone/screens/myNetfix/trailers.dart';
import 'package:netflix_clone/widgets/resuebale.dart';

class MyNetflixScreen extends StatelessWidget {
  const MyNetflixScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:blackColor ,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 140),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: SizedBox(
                  height: mediaqueryHeight(0.20, context),
                  width: mediaqueryWidth(0.35, context),
                  child: Image.asset(
                    "asset/profile-img.jpeg", 
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Center(
              child: mytext("  Jibil", 20, FontWeight.bold),
            ),
            SizedBox(
              height: mediaqueryHeight(0.02, context),
            ),
            listTile(Icons.notifications, Colors.red, "Notifications"),
            listTile(Icons.download, Colors.blue, "Downloads"),
            SizedBox(
              height: mediaqueryHeight(0.02, context),
            ),
            const Text(
              "TV Shows & Movies You've liked",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.grey,
                  fontSize: 19),
            ),
            SizedBox(
              height: mediaqueryHeight(0.01, context),
            ),
            SizedBox(
              height: mediaqueryHeight(0.25, context), 
              child: PopularMovies(),
            ),
            SizedBox(
              height: mediaqueryHeight(0.01, context),
            ),
            const Text(
              "Trailers You've Watched",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.grey,
                  fontSize: 19),
            ),
            SizedBox(
              height: mediaqueryHeight(0.01, context),
            ),
            SizedBox(
              height: mediaqueryHeight(0.20, context),
              child: TrailersWatched(),
            ),
            SizedBox(
              height: mediaqueryHeight(0.01, context),
            ),
            const Text(
              "Top Rated Movies",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.grey,
                  fontSize: 19),
            ),
            SizedBox(
              height: mediaqueryHeight(0.01, context),
            ),
            SizedBox(
              height: mediaqueryHeight(0.25, context),
              child: const TopRatedMovies(),
            ),
          ],
        ),
      ),
      );
  }
}