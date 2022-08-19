import 'package:flutter/material.dart';

class ArtExhibitionHomePage extends StatefulWidget {
  const ArtExhibitionHomePage({Key? key}) : super(key: key);

  @override
  State<ArtExhibitionHomePage> createState() => _ArtExhibitionHomePageState();
}

class _ArtExhibitionHomePageState extends State<ArtExhibitionHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            top: 0,
            child: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    // Colors.black.withOpacity(0.2),
                    // Colors.black.withOpacity(0.3),
                    // Colors.black.withOpacity(0.4),
                    // Colors.black.withOpacity(0.5),
                    Colors.black.withOpacity(0.8),
                    Colors.black,
                  ],
                ),
              ),
              padding: EdgeInsets.fromLTRB(16, 64, 16, 0),
              child: Column(
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.menu,
                        color: Colors.white,
                      ),
                      Expanded(
                        child: Center(
                          child: Text(
                            "Arexs.",
                            style: TextStyle(color: Colors.white, fontSize: 18),
                          ),
                        ),
                      ),
                      Icon(
                        Icons.search,
                        color: Colors.white,
                      ),
                    ],
                  ),
                  Expanded(
                    child: ListView.builder(
                      itemBuilder: (context, index) {
                        return Container(
                          height: 320,
                          color: Colors.orangeAccent,
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            child: Column(
              children: [
                Divider(
                  height: 1.5,
                  color: Colors.white,
                ),
                Container(
                  color: Colors.black,
                  height: 84,
                  padding: EdgeInsets.symmetric(horizontal: 32),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Home",
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(
                            height: 4,
                          ),
                          Container(
                            color: Colors.white,
                            height: 1.5,
                            width: 42,
                          )
                        ],
                      ),
                      IconButton(onPressed: (){}, icon: Icon(Icons.search), color: Colors.white,),
                      IconButton(onPressed: (){}, icon: Icon(Icons.thumb_up_alt_outlined),  color: Colors.white,),
                      IconButton(onPressed: (){}, icon: Icon(Icons.person_outline), color: Colors.white,),

                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
