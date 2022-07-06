import 'package:flutter/material.dart';
import 'package:flutter_notebook_chapter_21/ep1201_health_care_app/src/riverpod/select_chat_msg.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';



class HcMsgImageFocusPage extends ConsumerWidget {
  final String? img;
  const HcMsgImageFocusPage({Key? key, this.img}) : super(key: key);

  @override
  Widget build(BuildContext context, ref) {
    final item = ref.watch(selectedChatMsgItem);
    return Scaffold(
      body: Hero(
        tag: "img_${item?.name}",
        child: Center(child: Image.network(img ?? "", fit: BoxFit.cover,)),
      ),
    );
  }
}
