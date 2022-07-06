import 'package:flutter/material.dart';
import 'package:flutter_notebook_chapter_21/ep1201_health_care_app/src/riverpod/select_chat_msg.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HcChatMsgPage extends StatefulWidget {
  const HcChatMsgPage({Key? key}) : super(key: key);

  @override
  State<HcChatMsgPage> createState() => _HcChatMsgPageState();
}

class _HcChatMsgPageState extends State<HcChatMsgPage> {
  @override
  Widget build(BuildContext context) {
    return Consumer(builder: (context, ref, _) {
      final item = ref.watch(selectedChatMsgItem);
      return Column(
        children: [
          Text("I'm having a problem on a clame #12345"),
          Row(
            children: [
              CircleAvatar(
                backgroundImage: NetworkImage(item?.profileImg ?? ""),
              ),

            ],
          )
        ],
      );
    });
  }
}
