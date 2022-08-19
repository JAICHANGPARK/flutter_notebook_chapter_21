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
                      ),
                      Expanded(
                        child: Center(
                          child: Text(
                            "Arexs.",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 24
                            ),
                          ),
                        ),
                      ),
                      Icon(
                        Icons.search,
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            child: Container(
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}
