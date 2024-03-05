// ignore_for_file: prefer_const_constructors

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:netflix_clone/BottomNavigation/bottomnav.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    
    Timer(const Duration (seconds: 3),() =>
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>const BottomNavigationScreen())),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image.asset('asset/splashimage-5.jpg'),
      ),
    );
  }
}