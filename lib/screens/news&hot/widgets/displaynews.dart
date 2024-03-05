import 'package:flutter/material.dart';
import 'package:netflix_clone/api/api.dart';
import 'package:netflix_clone/valueNotifier/valuenotifier.dart';
import 'package:netflix_clone/widgets/resuebale.dart';

class DisplayHotAndNews extends StatelessWidget {
  const DisplayHotAndNews({super.key});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: loadUpcomingMovies(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Center(child: CircularProgressIndicator());
        } else if (snapshot.hasError) {
          return Text('error :${snapshot.error}');
        } else {
          return ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: upcomingMovies.value.length,
            itemBuilder: (context, index) {
              return Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: mediaqueryHeight(0.01, context),
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: SizedBox(
                      height: mediaqueryHeight(0.25, context),
                      width: mediaqueryWidth(0.9, context),
                      child: Image.network(
                        imageUrl +
                            upcomingMovies.value[index]
                                ['backdrop_path'],
                        fit: BoxFit.cover,
                      ), // Set a width for the container
                    ),
                  ),
                  SizedBox(
                    height: mediaqueryHeight(0.01, context),
                  ),
                  Text(
                    upcomingMovies.value[index]['title'],
                    style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 20),
                  ),
                  Text(
                    upcomingMovies.value[index]['overview'],
                    style: TextStyle(
                        fontWeight: FontWeight.normal,
                        color: greyColor,
                        fontSize: 15),
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                  ),
                  SizedBox(
                    height: mediaqueryHeight(0.01, context),
                  ),                 
                ],
              );
            },
          );
        }
      },
    );
  }
}