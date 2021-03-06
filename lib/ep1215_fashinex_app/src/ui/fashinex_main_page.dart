import 'package:flutter/material.dart';
import 'package:flutter_notebook_chapter_21/ep1215_fashinex_app/src/model/fashinex_menu.dart';
import 'package:flutter_notebook_chapter_21/ep1215_fashinex_app/src/ui/widget/fashinex_main_widget.dart';

class FashinexMainPage extends StatefulWidget {
  const FashinexMainPage({Key? key}) : super(key: key);

  @override
  State<FashinexMainPage> createState() => _FashinexMainPageState();
}

class _FashinexMainPageState extends State<FashinexMainPage> {
  int screenIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: IndexedStack(
          index: screenIndex,
          children: [
            FashinexMainWidget(),
            Center(
              child: Text("1"),
            ),
            Center(
              child: Text("2"),
            ),
            Center(
              child: Text("3"),
            ),
            Center(
              child: Text("4"),
            ),
          ],
        ),
      ),
      bottomNavigationBar: SizedBox(
        height: 72,
        child: BottomNavigationBar(
            currentIndex: screenIndex,
            onTap: (idx) {
              setState(() {
                screenIndex = idx;
              });
            },
            type: BottomNavigationBarType.fixed,
            selectedItemColor: Colors.black,
            unselectedItemColor: Colors.grey,
            backgroundColor: Colors.white,
            items: fashinexMenuItems
                .map((e) => BottomNavigationBarItem(
                      icon: Icon(e.iconData ?? Icons.home_max),
                      label: e.menuTitle ?? "",
                      tooltip: "Home",
                    ))
                .toList()),
      ),
    );
  }
}
