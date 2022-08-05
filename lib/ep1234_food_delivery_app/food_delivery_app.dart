import 'package:flutter/material.dart';
import 'package:flutter_notebook_chapter_21/ep1234_food_delivery_app/src/provider/fd_page_index.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class FoodDeliveryApp extends StatelessWidget {
  const FoodDeliveryApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: SingleChildScrollView(),
        ),
        bottomNavigationBar: Consumer(builder: (context, ref, _) {
          final index = ref.watch(fdPageIndex);
          return BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            selectedItemColor: Colors.teal,
            unselectedItemColor: Colors.grey,
            currentIndex: index,
            onTap: (idx) {
              
            },
            items: [
              BottomNavigationBarItem(icon: Icon(Icons.add_home_work_outlined), label: "Home"),
              BottomNavigationBarItem(icon: Icon(Icons.add_home_work_outlined), label: "Orders"),
              BottomNavigationBarItem(icon: Icon(Icons.add_home_work_outlined), label: "7Kmart"),
              BottomNavigationBarItem(icon: Icon(Icons.add_home_work_outlined), label: "Pro"),
              BottomNavigationBarItem(icon: Icon(Icons.add_home_work_outlined), label: "Account"),
            ],
          );
        }),
      ),
    );
  }
}
