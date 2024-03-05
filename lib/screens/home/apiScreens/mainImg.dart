import 'package:flutter/material.dart';
import 'package:netflix_clone/widgets/resuebale.dart';
import 'package:netflix_clone/api/api.dart';
import 'package:netflix_clone/valueNotifier/valuenotifier.dart';

class TrendingMovieScreen extends StatelessWidget {
  const TrendingMovieScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: loadTrendingMovies(),
        builder: (context, snapshot) {
          if (snapshot.connectionState ==
              ConnectionState.waiting) {
            return const Center(
                child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Text('error :${snapshot.error}');
          } else {
            return Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(18),
                  child: Container(
                    height: mediaqueryHeight(0.60, context),
                    width: double.infinity,
                    color: greyColor,
                    child: Image.network(
                      imageUrl +
                          trendingMovies.value[0]['poster_path'],
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Positioned(
                  child: Padding(
                    padding: EdgeInsets.only(
                        top: mediaqueryHeight(0.5, context)),
                    child: Row(
                      mainAxisAlignment:
                          MainAxisAlignment.spaceEvenly,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(12),
                          child: Container(
                              width:
                                  mediaqueryWidth(0.25, context),
                              height:
                                  mediaqueryHeight(0.04, context),
                              color: whitecolor,
                              child: Center(
                                child: mytext(
                                    "▶ Play",
                                    20,
                                    FontWeight.bold,
                                    blackColor),
                              )),
                        ),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(12),
                          child: Container(
                              width:
                                  mediaqueryWidth(0.25, context),
                              height:
                                  mediaqueryHeight(0.04, context),
                              color: Colors.grey,
                              child: Center(
                                child: mytext("✓ My List", 17,
                                    FontWeight.bold, whitecolor),
                              )),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            );
          }
        });
  }
}