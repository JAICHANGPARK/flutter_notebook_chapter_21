import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:flutter_notebook_chapter_21/ep1201_health_care_app/src/health_care_style.dart';
import 'package:flutter_notebook_chapter_21/ep1201_health_care_app/src/riverpod/menu_index_provider.dart';
import 'package:flutter_notebook_chapter_21/ep1201_health_care_app/src/ui/hc_chat_msg_page.dart';
import 'package:flutter_notebook_chapter_21/ep1201_health_care_app/src/ui/health_care_bottom_menu_widget.dart';
import 'package:flutter_notebook_chapter_21/ep1201_health_care_app/src/ui/health_care_chat_page.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HealthCareHomePage extends StatefulWidget {
  const HealthCareHomePage({Key? key}) : super(key: key);

  @override
  State<HealthCareHomePage> createState() => _HealthCareHomePageState();
}

class _HealthCareHomePageState extends State<HealthCareHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: 52,
              child: Consumer(builder: (context, ref, _) {
                final index = ref.watch(hcMenuIndexProvider);
                return Row(
                  children: [
                    Expanded(
                      child: Container(
                        margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                        decoration: BoxDecoration(
                          color: Colors.grey[100],
                          borderRadius: BorderRadius.circular(16),
                        ),
                        padding: EdgeInsets.symmetric(vertical: 0, horizontal: 8),
                        child: TextField(
                          decoration: InputDecoration(
                            icon: Icon(Icons.search),
                            // contentPadding: EdgeInsets.symmetric(horizontal: 8),
                            hintText: index == 0 ? "Search messages..." : "Search...",
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        ref.read(hcMenuIndexProvider.notifier).state = 0;
                      },
                      child: Badge(
                        child: Icon(Icons.message_outlined),
                        badgeContent: Text(
                          "3",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.account_circle,
                      ),
                    )
                  ],
                );
              }),
            ),
            Expanded(
              child: Consumer(builder: (context, ref, _) {
                final index = ref.watch(hcMenuIndexProvider);
                return IndexedStack(
                  index: index,
                  children: [
                    HealthCareChatPage(),
                    SingleChildScrollView(
                      child: Column(
                        children: [],
                      ),
                    ),
                    Container(),
                    Container(),
                    Container(),
                    Container(),
                    HcChatMsgPage(),
                  ],
                );
              }),
            )
          ],
        ),
      ),
      bottomNavigationBar: HealthCareBottomMenuWidget(),
    );
  }
}
