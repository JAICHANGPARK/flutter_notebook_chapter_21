import 'package:flutter/material.dart';

class FashinexMainWidget extends StatefulWidget {
  const FashinexMainWidget({Key? key}) : super(key: key);

  @override
  State<FashinexMainWidget> createState() => _FashinexMainWidgetState();
}

class _FashinexMainWidgetState extends State<FashinexMainWidget> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Row(
            children: [
              CircleAvatar(),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Good Morning 👋"),
                  Text(
                    "Dreamwalker",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
