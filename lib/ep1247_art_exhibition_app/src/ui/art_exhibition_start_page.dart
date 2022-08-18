import 'package:flutter/material.dart';

class ArtExhibitonStartPage extends StatelessWidget {
  const ArtExhibitonStartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            left: 0,
            right: 0,
            top: 0,
            bottom: 0,
            child: Container(),
          ),
          Positioned(
            left: 16,
            right: 16,
            top: 72,
            bottom: 0,
            child: Column(
              children: [
                Text(
                  "Arexs",
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
