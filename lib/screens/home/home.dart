import 'package:flutter/material.dart';
import 'package:netflix_clone/widgets/resuebale.dart';
import 'package:netflix_clone/screens/home/appBarHome.dart';
import 'package:netflix_clone/screens/home/apiScreens/popularMov.dart';
import 'package:netflix_clone/screens/home/apiScreens/mainImg.dart';
import 'package:netflix_clone/screens/home/apiScreens/nowPlaying.dart';
import 'package:netflix_clone/screens/home/apiScreens/topRated.dart';
import 'package:netflix_clone/screens/home/apiScreens/topTvShows.dart';
import 'package:netflix_clone/screens/home/apiScreens/trending.dart';
import 'package:netflix_clone/screens/home/apiScreens/upcoming.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: blackColor,
        body: SingleChildScrollView(
          child: Padding(
            padding:const EdgeInsets.all(10),
            child: Column(crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: mediaqueryHeight(0.02, context),
                ),
                const CatagoryList(),
                SizedBox(
                  height: mediaqueryHeight(0.03, context),
                ),
                  const TrendingMovieScreen(),
                  SizedBox(
                    height: mediaqueryHeight(0.02, context),
                  ),
                  const Text(
                    "Now Playing",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 20),
                  ),
                  SizedBox(
                    height: mediaqueryHeight(0.02, context),
                  ),
                SizedBox(
                  height: mediaqueryHeight(0.25, context),
                  child: const NowPlaying(), 
                ),
                  const Text('Trending Movies',style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 20),),
                SizedBox(
                    height: mediaqueryHeight(0.01, context),
                  ),
                   SizedBox(
                    height: mediaqueryHeight(0.25, context),
                    child: const TrendingMovieListScreen(), 
                  ),
                  SizedBox(
                    height: mediaqueryHeight(0.01, context),
                  ),
                  const Text(
                    "Top Rated Movies",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 20),
                  ),
                  SizedBox(
                    height: mediaqueryHeight(0.02, context),
                  ),
                   SizedBox(
                    height: mediaqueryHeight(0.25, context),
                    child: const TopRatedMovies(),
                  ),
                  SizedBox(
                    height: mediaqueryHeight(0.01, context),
                  ),
                  const Text(
                    "Upcoming Movies",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 20),
                  ),
                  SizedBox(
                    height: mediaqueryHeight(0.02, context),
                  ),
                   SizedBox(
                    height: mediaqueryHeight(0.25, context),
                    child: const UpcomingMovies(),
                  ),
                  SizedBox(
                    height: mediaqueryHeight(0.01, context),
                  ),
                  const Text(
                    "Popular Movies",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 20),
                  ),
                  SizedBox(
                    height: mediaqueryHeight(0.02, context),
                  ),
                SizedBox(
                  height: mediaqueryHeight(0.40, context),
                  child: const PopularMovies(),
                ),
               SizedBox(
                    height: mediaqueryHeight(0.01, context),
                  ),
                  const Text(
                    "Top Rated TV Shows",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 20),
                  ),
                  SizedBox(
                    height: mediaqueryHeight(0.02, context),
                  ),
                SizedBox(
                  height: mediaqueryHeight(0.25, context),
                  child: const TopRatedTvShows(),
                ),
               
              ],
            ),
          ),
        ));
  }
}
