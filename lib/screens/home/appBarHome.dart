import 'package:flutter/material.dart';
import 'package:netflix_clone/widgets/resuebale.dart';

class CatagoryList extends StatelessWidget {
  const CatagoryList({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: mediaqueryHeight(0.02, context),
        ),
        Container(
          decoration: BoxDecoration(
            border: Border.all(color: whitecolor),
            borderRadius: BorderRadius.circular(100),
          ),
          child:const Padding(padding: EdgeInsets.all(10),
          child: Text('TV Shows',
          style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 18),
          ),
          ),
        ),
        SizedBox(
          width: mediaqueryWidth(0.03, context),         
        ),
        Container(
          decoration: BoxDecoration(
            border: Border.all(color: whitecolor),
            borderRadius: BorderRadius.circular(100),
          ),
          child:const Padding(padding: EdgeInsets.all(10),
          child: Text('Movies',
          style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 18),
          ),
          ),
        ),
        SizedBox(
          width: mediaqueryWidth(0.03, context),         
        ),
                Container(
          decoration: BoxDecoration(
            border: Border.all(color: whitecolor),
            borderRadius: BorderRadius.circular(100),
          ),
          child:const Padding(padding: EdgeInsets.all(10),
          child: Text('Catagories ▼',
          style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 18),
          ),
          ),
        ),
      ],
    );
  }
}