import 'package:flutter/material.dart';
import 'package:netflix_clone/widgets/resuebale.dart';
import 'package:netflix_clone/api/api.dart';

class MovieDetails extends StatelessWidget {
  ValueNotifier valueNotifier;
  int index;

  MovieDetails({required this.valueNotifier, required this.index, super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: blackColor,
      appBar: AppBar(
          backgroundColor: blackColor,
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.arrow_back),
            color: whitecolor,
          ),
          actions: [
            Icon(
              Icons.search,
              color: whitecolor,
            ),
            SizedBox(
              width: mediaqueryHeight(0.02, context),
            )
          ]),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: double.infinity,
              height: mediaqueryHeight(0.35, context),
              child: Image(
                fit: BoxFit.cover,
                alignment: Alignment.topCenter,
                image: NetworkImage(
                  valueNotifier.value[index]['poster_path'] == null
                      ? "https://i.pcmag.com/imagery/reviews/05cItXL96l4LE9n02WfDR0h-5.fit_scale.size_760x427.v1582751026.png"
                      : imageUrl + valueNotifier.value[index]['poster_path'],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  mytext(
                    valueNotifier.value[index]["title"] ??
                        valueNotifier.value[index]["name"],
                    28,
                    FontWeight.w700,
                  ),
                  SizedBox(height: mediaqueryHeight(0.015, context)),
                  Container(
                    width: double.infinity,
                    height: mediaqueryHeight(0.07, context),
                    decoration: BoxDecoration(
                        color: greyColor,
                        borderRadius: BorderRadius.circular(4)),
                    child:const Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                           Icon(
                            Icons.play_arrow
                          ),
                          Text('Play',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,),),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: mediaqueryHeight(0.01, context)),
                  Container(
                    width: double.infinity,
                    height: mediaqueryHeight(0.07, context),
                    decoration: BoxDecoration(
                        color: Colors.white30,
                        borderRadius: BorderRadius.circular(4)),
                    child:const Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                           Icon(
                            Icons.file_download_outlined
                          ),
                          Text('Download',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,),),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: mediaqueryHeight(0.03, context)),
                  mytext(
                      valueNotifier.value[index]['overview'],
                      14,
                      FontWeight.normal,
                      const Color.fromARGB(226, 255, 255, 255)),
                  SizedBox(height: mediaqueryHeight(0.03, context)),
                  const Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
                  
                    children: [
                       Column(
                         children: [
                           Icon(Icons.add_sharp),
                           Text('My List'),
                         ],
                       ), 
                      Column(
                        children: [
                          Icon(Icons.thumb_up_sharp), 
                          Text('Like'),
                        ],
                      ),
                      Column(
                        children: [
                          Icon(Icons.share_sharp),
                          Text('Share'),
                        ],
                      )
                    ],
                  )
                ],
              ),
            ),
            SizedBox(height: mediaqueryHeight(0.02, context)),
            Center(
                child: Container(
              width: mediaqueryWidth(0.2, context),
              height: 5,
              color: Colors.red,
            )),
            Container(
              width: double.infinity,
              height: 1,
              color: Colors.white24,
            )
          ],
        ),
      )),
    );
  }
}
