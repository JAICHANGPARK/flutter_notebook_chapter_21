import 'package:flutter/material.dart';
import 'package:flutter_notebook_chapter_21/ep1201_health_care_app/src/model/hc_chat.dart';
import 'package:flutter_notebook_chapter_21/ep1201_health_care_app/src/riverpod/menu_index_provider.dart';
import 'package:flutter_notebook_chapter_21/ep1201_health_care_app/src/riverpod/select_chat_msg.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HealthCareChatPage extends StatefulWidget {
  const HealthCareChatPage({Key? key}) : super(key: key);

  @override
  State<HealthCareChatPage> createState() => _HealthCareChatPageState();
}

class _HealthCareChatPageState extends State<HealthCareChatPage> {
  @override
  Widget build(BuildContext context) {
    return Consumer(builder: (context, ref, _) {
      final index = ref.watch(hcMenuIndexProvider);
      return Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: ListView.builder(
                itemCount: hcChatItems.length,
                itemBuilder: (context, index) {
                  var item = hcChatItems[index];
                  return GestureDetector(
                    onTap: () {
                      ref.read(hcMenuIndexProvider.notifier).state = 6;
                      ref.read(selectedChatMsgItem.notifier).state = item;
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(bottom: 16),
                      child: Row(
                        children: [
                          CircleAvatar(
                            backgroundImage: NetworkImage(
                              item.profileImg ?? "",
                            ),
                          ),
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
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
                                      SizedBox(
                                        width: 4,
                                      ),
                                      Text(
                                        "${item.name ?? ""}",
                                        style: TextStyle(fontWeight: FontWeight.bold),
                                      ),
                                      Spacer(),
                                      Text(
                                        "${item?.time ?? ""}",
                                        style: TextStyle(
                                          color: Colors.grey,
                                          fontSize: 12,
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 4,
                                  ),
                                  Row(
                                    children: [
                                      Expanded(
                                        child: Text(
                                          "${item.msg}",
                                          style: TextStyle(
                                            fontSize: 12,
                                            color: Colors.grey,
                                          ),
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                      ),
                                      item.tag != null
                                          ? Container(
                                              decoration: BoxDecoration(
                                                color: Colors.grey,
                                                borderRadius: BorderRadius.circular(8),
                                              ),
                                              padding: EdgeInsets.symmetric(horizontal: 6, vertical: 2),
                                              child: Center(
                                                child: Text(
                                                  "${item.tag ?? ""}",
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
                          )
                        ],
                      ),
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
    });
  }
}
