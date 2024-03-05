import 'package:flutter/material.dart';
import 'package:netflix_clone/api/api.dart';
import 'package:netflix_clone/valueNotifier/valuenotifier.dart';
import 'package:netflix_clone/widgets/resuebale.dart';

class TrailersWatched extends StatelessWidget {
  const TrailersWatched({super.key});

  @override
  Widget build(BuildContext context) {
   return FutureBuilder(
      future: loadTrendingMovies(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Center(child: CircularProgressIndicator());
        } else if (snapshot.hasError) {
          return Text('error :${snapshot.error}');
        } else {
          return InkWell(
            child: ClipRRect(
              borderRadius: BorderRadiusDirectional.circular(10),
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: trendingMovies.value.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(right: 15),
                    child: GestureDetector(
                      onTap: () {},
                      child: Container(
                        color: greyColor,
                        child: Image.network(
                          imageUrl +
                              trendingMovies.value[index]
                                  ['backdrop_path'],
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          );
        }
      },
    );
  }
}