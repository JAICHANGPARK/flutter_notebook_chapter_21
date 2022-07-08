import 'package:flutter/material.dart';

class LooksieSellerHomePage extends StatefulWidget {
  const LooksieSellerHomePage({Key? key}) : super(key: key);

  @override
  State<LooksieSellerHomePage> createState() => _LooksieSellerHomePageState();
}

class _LooksieSellerHomePageState extends State<LooksieSellerHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home_filled,
            ),
            label: "Home"
          ),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.person_outline,
              ),
              label: "Home"
          ),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.add_box_outlined,
              ),
              label: "Home"
          ),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.chat_bubble_outline_outlined,
              ),
              label: "Home"
          )
        ],
      ),
    );
  }
}
