import 'package:flutter/material.dart';

ValueNotifier<List<dynamic>>trendingMovies=ValueNotifier([]);
ValueNotifier <List<dynamic>>topRatedMovies=ValueNotifier([]);
ValueNotifier<List<dynamic>>upcomingMovies=ValueNotifier([]);
ValueNotifier<List<dynamic>>popularMovies=ValueNotifier([]);
ValueNotifier<List<dynamic>>topRateTvShows=ValueNotifier([]);
ValueNotifier<List<dynamic>>nowPlayig=ValueNotifier([]);
ValueNotifier<bool> isLoading = ValueNotifier(false);
ValueNotifier<List<dynamic>> searchMovieTitles = ValueNotifier([]);
