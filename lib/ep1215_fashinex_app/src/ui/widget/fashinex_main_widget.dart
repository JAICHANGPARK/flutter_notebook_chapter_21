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
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              children: [
                CircleAvatar(),
                SizedBox(
                  width: 8,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Good Morning 👋"),
                    SizedBox(
                      height: 8,
                    ),
                    Text(
                      "Dreamwalker",
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                    ),

                  ],
                ),
                Spacer(),
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.notifications_none),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.favorite_border),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
