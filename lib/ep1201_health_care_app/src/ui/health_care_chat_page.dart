import 'package:flutter/material.dart';
import 'package:flutter_notebook_chapter_21/ep1201_health_care_app/src/model/hc_chat.dart';

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
        Expanded(
          child: ListView.builder(
            itemCount: hcChatItems.length,
            itemBuilder: (context, index) {
              return Row(
                children: [
                  
                ],
              );
            },
          ),
        ),
        Container(
          margin: EdgeInsets.symmetric(horizontal: 8, vertical: 8),
          decoration: BoxDecoration(color: Colors.blue, borderRadius: BorderRadius.circular(4)),
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
