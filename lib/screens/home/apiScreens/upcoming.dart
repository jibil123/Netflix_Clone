import 'package:flutter/material.dart';
import 'package:netflix_clone/widgets/resuebale.dart';
import 'package:netflix_clone/api/api.dart';
import 'package:netflix_clone/screens/home/innerPage/movDetails.dart';
import 'package:netflix_clone/valueNotifier/valuenotifier.dart';

class UpcomingMovies extends StatelessWidget {
  const UpcomingMovies({super.key});

  @override
  Widget build(BuildContext context) {
     return FutureBuilder(
        future: loadUpcomingMovies(),
        builder: (context, snapshot) {
          if (snapshot.connectionState ==
              ConnectionState.waiting) {
            return const Center(
                child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Text('error :${snapshot.error}');
          } else {
            return InkWell(
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: upcomingMovies.value.length,
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
                                            topRatedMovies,
                                        index: index)));
                      },
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Container(
                          color: greyColor,
                          child: Image.network(
                            imageUrl +
                                upcomingMovies.value[index]
                                    ['poster_path'],
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
            );
          }
        });
  }
}