import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:netflix_clone/valueNotifier/valuenotifier.dart';

String apiKey = "890777d4bd09ad0d415d0b4fa469527e";
String imageUrl = "https://image.tmdb.org/t/p/w500"; 

loadPopularMovies() async {
  final url =
      "https://api.themoviedb.org/3/discover/movie?api_key=$apiKey&language=en-US";
  final response = await http.get(Uri.parse(url));
  if (response.statusCode == 200) {
    popularMovies.value = jsonDecode(response.body)['results'];
  }
}

loadTrendingMovies() async {
  final url =
      "https://api.themoviedb.org/3/trending/movie/day?api_key=$apiKey&language=en-US";
  final response = await http.get(Uri.parse(url));
  if (response.statusCode == 200) {
    trendingMovies.value = jsonDecode(response.body)['results'];
  }
}

loadTopRatedMovies() async {
  final url =
      "https://api.themoviedb.org/3/movie/top_rated?api_key=$apiKey&language=en-US&page=1";
  final response = await http.get(Uri.parse(url));
  if (response.statusCode == 200) {
    topRatedMovies.value = jsonDecode(response.body)['results'];
  }
}

loadUpcomingMovies() async {
  final url =
      'https://api.themoviedb.org/3/movie/upcoming?api_key=$apiKey&language=en-US&page=1';
  final response = await http.get(Uri.parse(url));
  if (response.statusCode == 200) {
    upcomingMovies.value = jsonDecode(response.body)['results'];
  }
}

loadTopRatedTvShows() async {
  final uri =
      'https://api.themoviedb.org/3/tv/top_rated?api_key=$apiKey&language=en-US&page=1';
  final response = await http.get(Uri.parse(uri));
  if (response.statusCode == 200) {
    topRateTvShows.value = jsonDecode(response.body)['results'];
  }
}

loadPopularTvShows() async {
  final uri =
      'https://api.themoviedb.org/3/movie/now_playing?api_key=$apiKey&language=en-US&page=1';
  final respones = await http.get(Uri.parse(uri));
  if (respones.statusCode == 200) {
    nowPlayig.value = jsonDecode(respones.body)['results'];
  }
}

loadSearchScreen(String query) async {
  isLoading.value = true;
  final uri =
      "https://api.themoviedb.org/3/search/multi?query=$query&api_key=$apiKey&language=en-US";
  final response = await http.get(Uri.parse(uri));
  if (response.statusCode == 200) {
    searchMovieTitles.value = jsonDecode(response.body)['results'];
    searchMovieTitles.notifyListeners();
    isLoading.value = false;
    isLoading.notifyListeners();
  }
}
