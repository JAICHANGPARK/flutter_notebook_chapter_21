
import 'package:flutter/material.dart';

class JobFinderStartPage extends StatelessWidget {
  const JobFinderStartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage()
              )
            ),
          ))
        ],
      ),
    );
  }
}
