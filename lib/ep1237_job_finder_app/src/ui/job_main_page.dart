import 'package:flutter/material.dart';

class JobMainPage extends StatefulWidget {
  const JobMainPage({Key? key}) : super(key: key);

  @override
  State<JobMainPage> createState() => _JobMainPageState();
}

class _JobMainPageState extends State<JobMainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomAppBar(
        child: Container(
          height: 64,
          decoration: BoxDecoration(),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.home_filled,
                    color : Colors.deepOrange,
                    size: 28,
                  ),
                  SizedBox(height: 4,),
                  CircleAvatar(
                    radius: 3,
                    backgroundColor: Colors.deepOrange,
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
