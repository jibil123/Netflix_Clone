
import 'package:flutter/material.dart';
import 'package:netflix_clone/api/api.dart';
import 'package:netflix_clone/valueNotifier/valuenotifier.dart';
import 'package:netflix_clone/widgets/resuebale.dart';

Padding searchBox(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 5),
    child: Container(
      width: double.infinity,
      height: mediaqueryHeight(0.06, context),
      decoration: const BoxDecoration(color: Colors.white24),
      child: Row(
        children: [
          SizedBox(
            width: mediaqueryWidth(0.05, context),
          ),
          const Icon(Icons.search),
          SizedBox(
            width: mediaqueryWidth(0.05, context),
          ),
          Expanded(
              child: TextField(
            onChanged: (value) {
              isLoading.value = true;
              loadSearchScreen(value);
            //here
            },
            showCursor: true,
            textAlign: TextAlign.start,
            decoration: const InputDecoration(
                border: InputBorder.none,
                hintText: "Search games, shows, movies..."),
          )),
          SizedBox(width: mediaqueryWidth(0.05, context)),
          const Icon(Icons.mic),
          SizedBox(
            width: mediaqueryWidth(0.05, context),
          ),
        ],
      ),
    ),
  );
}
