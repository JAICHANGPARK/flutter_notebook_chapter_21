import 'package:flutter/material.dart';
import 'package:flutter_notebook_chapter_21/ep1201_health_care_app/src/riverpod/select_chat_msg.dart';
import 'package:flutter_notebook_chapter_21/ep1201_health_care_app/src/ui/hc_msg_image_focus_page.dart';
import 'package:flutter_notebook_chapter_21/global_utils/global_text_util.dart';
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
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Text(
                                    item?.name ?? "name",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 4,
                                  ),
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
                                  : Container(),
                            ],
                          ),
                        ),
                        Spacer(),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.reply_outlined),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.more_horiz),
                        ),
                      ],
                    ),
                  ),
                  Text(
                    loremIpsum,
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                  Expanded(
                    child: Hero(
                      tag: "img_${item?.name}",
                      child: GestureDetector(
                        onTap: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => HcMsgImageFocusPage(
                                img: "https://cdn.pixabay.com/photo/2016/11/29/06/15/plans-1867745__340.jpg",
                              ),
                            ),
                          );
                        },
                        child: Image.network(
                          "https://cdn.pixabay.com/photo/2016/11/29/06/15/plans-1867745__340.jpg",
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 0, vertical: 8),
              decoration: BoxDecoration(color: Colors.blue, borderRadius: BorderRadius.circular(4)),
              padding: EdgeInsets.symmetric(vertical: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.reply,
                    color: Colors.white,
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Text(
                    "Reply",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      );
    });
  }
}
