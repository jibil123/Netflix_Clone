import 'package:flutter/material.dart';

class AppbarNavbarScreen extends StatelessWidget {
  const AppbarNavbarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      actions: [
      Icon(Icons.search),
      
      ],
    );
  }
}