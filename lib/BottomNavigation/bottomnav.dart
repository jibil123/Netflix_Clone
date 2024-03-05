import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:netflix_clone/BottomNavigation/bottomFun.dart';
import 'package:netflix_clone/widgets/resuebale.dart';
import 'package:netflix_clone/screens/home/home.dart';
import 'package:netflix_clone/screens/myNetfix/mynetflix.dart';
import 'package:netflix_clone/screens/news&hot/news&hot.dart';

class BottomNavigationScreen extends StatefulWidget {
  const BottomNavigationScreen({super.key});

  @override
  State<BottomNavigationScreen> createState() => _BottomNavigationScreenState();
}

class _BottomNavigationScreenState extends State<BottomNavigationScreen> {

  List<Widget> _pages=[
    HomeScreen(),
    NewsAndHot(),
    MyNetflixScreen(),   
  ];
  final PageController _pageController = PageController(initialPage : 0);
  int currentPage=0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor:blackColor ,
         leading: buildLeadingWidget(currentPage),
        actions: buildTrailingWidget(currentPage,context),
        title: buildTitleWidget(currentPage),
      ),
       body: PageView(
        controller: _pageController,
        children: _pages,
        onPageChanged: (value) {
          setState(() {
            currentPage = value;
          });
        },
      ),
      bottomNavigationBar: BottomNavigationBar(
        iconSize: 18,
        backgroundColor: blackColor,
        currentIndex: currentPage,
        onTap: (values) {
          setState(() {
            currentPage = values;
            _pageController.animateToPage(currentPage,
                duration: const Duration(milliseconds: 300),
                curve: Curves.ease);
          });
        },
        items: const [
          BottomNavigationBarItem(
              icon: Icon(FontAwesomeIcons.house), label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(FontAwesomeIcons.newspaper), label: "News & Hot"),
          BottomNavigationBarItem(
              icon: Icon(FontAwesomeIcons.user), label: "My Netflix")
        ],
        selectedLabelStyle: const TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.bold,
        ),
        unselectedLabelStyle: const TextStyle(
          fontSize: 10,
        ),
        elevation: 8,
      ),
    );
  }
}