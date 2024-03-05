import 'package:flutter/material.dart';
import 'package:netflix_clone/widgets/resuebale.dart';
import 'package:netflix_clone/api/api.dart';
import 'package:netflix_clone/screens/home/innerPage/movDetails.dart';
import 'package:netflix_clone/valueNotifier/valuenotifier.dart';

class TrendingMovieListScreen extends StatelessWidget {
  const TrendingMovieListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: loadTrendingMovies(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          } else if (snapshot.hasError) {
            return Text('${snapshot.error}');
          } else {
            return ListView.builder(
                itemCount: trendingMovies.value.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(left: 5, right: 5),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => MovieDetails(
                                      valueNotifier: trendingMovies,
                                      index: index)));
                        },
                        child: Container(
                          color: greyColor,
                          child: Image.network(
                              imageUrl +
                                  trendingMovies.value[index]['poster_path'],
                              fit: BoxFit.cover),
                        ),
                      ),
                    ),
                  );
                });
          }
        });
  }
}
