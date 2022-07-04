import 'package:flutter/material.dart';

class HealthCareChatPage extends StatefulWidget {
  const HealthCareChatPage({Key? key}) : super(key: key);

  @override
  State<HealthCareChatPage> createState() => _HealthCareChatPageState();
}

class _HealthCareChatPageState extends State<HealthCareChatPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.symmetric(horizontal: 8),
          decoration: BoxDecoration(
            color: Colors.blue,
          ),
          padding: EdgeInsets.symmetric(vertical: 8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.edit,
                color: Colors.white,
              ),
              SizedBox(
                width: 8,
              ),
              Text(
                "New Message",
                style: TextStyle(
                  color: Colors.white,
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
