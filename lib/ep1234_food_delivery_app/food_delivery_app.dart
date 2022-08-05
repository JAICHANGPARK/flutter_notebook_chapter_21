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
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 12, vertical: 12),
                        child: Row(
                          children: [
                            CircleAvatar(
                              radius: 24,
                            ),
                            SizedBox(width: 8,),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
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
                                    fontSize: 15
                                  ),
                                )
                              ],
                            ),
                            Container(
                              width: 64,
                              height: 42,
                              decoration: BoxDecoration(
                                color: Colors.brown[200],
                                borderRadius: BorderRadius.circular(24)
                              ),
                            )
                          ],
                        ),
                      ),
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
