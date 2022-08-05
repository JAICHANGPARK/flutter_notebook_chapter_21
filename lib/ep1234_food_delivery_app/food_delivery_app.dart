import 'package:flutter/material.dart';
import 'package:flutter_notebook_chapter_21/ep1234_food_delivery_app/src/provider/fd_page_index.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class FoodDeliveryApp extends StatelessWidget {
  const FoodDeliveryApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Consumer(builder: (context, ref, _) {
          final index = ref.watch(fdPageIndex);
          return SafeArea(
            child: IndexedStack(
              index: index,
              children: [
                SingleChildScrollView(
                  child: Column(
                    children: [
                      Row(
                        children: [
                          CircleAvatar(),
                          Column(
                            children: [
                              Row(
                                children: [
                                  Text("Delivery Location"),
                                  Icon(
                                    Icons.keyboard_arrow_down,
                                    color: Colors.teal,
                                  )
                                ],
                              ),
                              Text(
                                "50 Molynes Rd, Kingston",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              )
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                ),
                Center(
                  child: Text("$index"),
                ),
                Center(
                  child: Text("$index"),
                ),
                Center(
                  child: Text("$index"),
                ),
                Center(
                  child: Text("$index"),
                ),
              ],
            ),
          );
        }),
        bottomNavigationBar: Consumer(builder: (context, ref, _) {
          final index = ref.watch(fdPageIndex);
          return BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            selectedItemColor: Colors.teal,
            unselectedItemColor: Colors.grey,
            currentIndex: index,
            onTap: (idx) {
              ref.refresh(fdPageIndex.state).state = idx;
            },
            items: [
              BottomNavigationBarItem(icon: Icon(Icons.add_home_work_outlined), label: "Home"),
              BottomNavigationBarItem(icon: Icon(Icons.list_alt), label: "Orders"),
              BottomNavigationBarItem(icon: Icon(Icons.inventory_2_outlined), label: "7Kmart"),
              BottomNavigationBarItem(icon: Icon(Icons.stars_outlined), label: "Pro"),
              BottomNavigationBarItem(icon: Icon(Icons.person_outline), label: "Account"),
            ],
          );
        }),
      ),
    );
  }
}
