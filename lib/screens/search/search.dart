import 'package:flutter/material.dart';
import 'package:netflix_clone/api/api.dart';
import 'package:netflix_clone/screens/home/innerPage/movDetails.dart';
import 'package:netflix_clone/screens/search/widgets/SearchValue.dart';
import 'package:netflix_clone/screens/search/widgets/searchList.dart';
import 'package:netflix_clone/valueNotifier/valuenotifier.dart';
import 'package:netflix_clone/widgets/resuebale.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Icon(
            Icons.cast,
            size: 20,
            color: whitecolor,
          ),
          SizedBox(
            width: mediaqueryHeight(0.02, context),
          ),
        ],
      ),
      body: SafeArea(
          child: Column(
        children: [
          searchBox(context),
          Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: mediaqueryHeight(
                    0.02,
                    context,
                  ),
                  vertical: mediaqueryWidth(0.0, context)),
              child: ValueListenableBuilder(
                valueListenable: searchMovieTitles,
                builder: (context, value, child) {
                  return isLoading.value == true
                      ? const Center(
                          child: CircularProgressIndicator(),
                        )
                      : value.isEmpty
                          ? Expanded(
                              child: Center(
                              child: mytext("No results found", 16),
                            ))
                          : ListView.builder(
                              itemCount: searchMovieTitles.value.length,
                              itemBuilder: (context, index) {
                                String title = value[index]['title'] ??
                                    value[index]['name'];
                                late String? url;
                                if (value[index]["poster_path"] != null) {
                                  url = value[index]["poster_path"];
                                } else {
                                  url = value[index]["backdrop_path"];
                                }

                                String urls = url != null
                                    ? imageUrl + url
                                    : "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcThW3vszDScLtuavCM31FfcECi3KJ9-wo2HqnX1wB0ewQ&s";

                                return SizedBox(
                                  height: mediaqueryHeight(0.1, context),
                                  child: GestureDetector(
                                    onTap: () {
                                      Navigator.of(context).push(
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  MovieDetails(
                                                      valueNotifier:
                                                          searchMovieTitles,
                                                      index: index)));
                                    },
                                    child: SearchListScreen(
                                        urls: urls, title: title),
                                  ),
                                );
                              },
                            );
                },
              ),
            ),
          )
        ],
      )),
    );
  }
}
