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
      return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
                child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("I'm having a problem on a clame #12345"),

                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 12),
                  child: Row(
                    children: [
                      CircleAvatar(
                        backgroundImage: NetworkImage(item?.profileImg ?? ""),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text(item?.name ?? "name"),
                              Text(item?.time ?? "time"),
                            ],
                          ),
                          item?.tag != null
                              ? Container(
                                  decoration: BoxDecoration(
                                    color: Colors.grey,
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  padding: EdgeInsets.symmetric(horizontal: 6, vertical: 2),
                                  child: Center(
                                    child: Text(
                                      "${item?.tag ?? ""}",
                                      style: TextStyle(
                                        fontSize: 10,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                )
                              : Container()
                        ],
                      )
                    ],
                  ),
                ),
              ],
            )),
          ],
        ),
      );
    });
  }
}
