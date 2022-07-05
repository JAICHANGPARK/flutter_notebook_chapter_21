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
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: ListView.builder(
              itemCount: hcChatItems.length,
              itemBuilder: (context, index) {
                var item = hcChatItems[index];
                return Padding(
                  padding: const EdgeInsets.only(bottom: 16),
                  child: Row(
                    children: [
                      CircleAvatar(),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                item.unreadMsg != 0
                                    ? CircleAvatar(
                                        radius: 8,
                                        foregroundColor: Colors.white,
                                        backgroundColor: Colors.red,
                                        child: Text(
                                          "${item.unreadMsg}",
                                          style: TextStyle(fontSize: 10),
                                        ),
                                      )
                                    : Container(),
                                Text(
                                  "${item.name ?? ""}",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                Spacer(),
                                Text("${item?.time ?? ""}")
                              ],
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                );
              },
            ),
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
