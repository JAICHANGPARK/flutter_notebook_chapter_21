import 'package:flutter/material.dart';
import 'package:flutter_notebook_chapter_21/ep1215_fashinex_app/src/model/fashinex_menu.dart';

class FashinexWishListPage extends StatefulWidget {
  const FashinexWishListPage({Key? key}) : super(key: key);

  @override
  State<FashinexWishListPage> createState() => _FashinexWishListPageState();
}

class _FashinexWishListPageState extends State<FashinexWishListPage> {
  int screenIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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

