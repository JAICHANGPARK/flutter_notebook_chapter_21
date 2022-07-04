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
        ElevatedButton.icon(
          onPressed: () {},
          icon: Icon(Icons.edit),
          label: Text("New Message"),
        )
      ],
    );
  }
}
