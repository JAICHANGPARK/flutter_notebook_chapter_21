import 'package:flutter/material.dart';

class JobFinderStartPage extends StatelessWidget {
  const JobFinderStartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(
                    "https://cdn.pixabay.com/photo/2017/08/02/10/03/people-2570596_960_720.jpg",
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
