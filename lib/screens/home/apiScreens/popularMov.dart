import 'package:flutter/material.dart';
import 'package:netflix_clone/widgets/resuebale.dart';
import 'package:netflix_clone/api/api.dart';
import 'package:netflix_clone/screens/home/innerPage/movDetails.dart';
import 'package:netflix_clone/valueNotifier/valuenotifier.dart';

class PopularMovies extends StatelessWidget {
  const PopularMovies({super.key});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: loadPopularMovies(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Text("${snapshot.error}");
          } else {
            return InkWell(
              child: ClipRRect(
                borderRadius: BorderRadiusDirectional.circular(6),
                child: ListView.builder(
                  itemCount: popularMovies.value.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(right: 15),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => MovieDetails(
                                        valueNotifier: popularMovies,
                                        index: index)));
                          },
                          child: Container(
                            color: greyColor,
                            child: Image.network(
                              imageUrl +
                                  popularMovies.value[index]['poster_path'],
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
        });
  }
}
