import 'package:flutter/material.dart';
import 'package:netflix_clone/widgets/resuebale.dart';
import 'package:netflix_clone/api/api.dart';
import 'package:netflix_clone/screens/home/innerPage/movDetails.dart';
import 'package:netflix_clone/valueNotifier/valuenotifier.dart';

class TopRatedTvShows extends StatelessWidget {
  const TopRatedTvShows({super.key});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: loadTopRatedTvShows(),
      builder: (context, snapshot) {
        if (snapshot.connectionState ==
            ConnectionState.waiting) {
          return const Center(
              child: CircularProgressIndicator());
        } else if (snapshot.hasError) {
          return Text("error: ${snapshot.error}");
        } else {
          return InkWell(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: topRateTvShows.value.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(right: 15),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    MovieDetails(
                                        valueNotifier:
                                            topRateTvShows,
                                        index: index)));
                      },
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Container(
                          color: greyColor,
                          child: Image.network(
                            imageUrl +
                                topRateTvShows.value[index]
                                    ['poster_path'],
                            fit: BoxFit.cover,
                          ),
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