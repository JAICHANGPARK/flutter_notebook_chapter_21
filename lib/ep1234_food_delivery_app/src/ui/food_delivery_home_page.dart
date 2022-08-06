import 'package:flutter/material.dart';
import 'package:flutter_notebook_chapter_21/ep1234_food_delivery_app/src/provider/fd_page_index.dart';
import 'package:flutter_notebook_chapter_21/ep1234_food_delivery_app/src/ui/widget/fd_bottom_bar_widget.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class FdDeliveryHomeWidget extends ConsumerWidget {
  const FdDeliveryHomeWidget({super.key});

  @override
  Widget build(BuildContext context, ref) {
    final index = ref.watch(fdPageIndex);
    return Scaffold(
        bottomNavigationBar: FdBottomBarWidget(),
        body: SafeArea(
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
                      SizedBox(
                        width: 8,
                      ),
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
                            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                          )
                        ],
                      ),
                      Spacer(),
                      Container(
                        width: 64,
                        height: 42,
                        decoration: BoxDecoration(
                          color: Colors.brown[200],
                          borderRadius: BorderRadius.circular(24),
                        ),
                        padding: EdgeInsets.all(2),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              "0",
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                            CircleAvatar(
                              radius: 16,
                              backgroundColor: Colors.white,
                              foregroundColor: Colors.brown,
                              child: Icon(
                                Icons.shopping_cart_outlined,
                                size: 16,
                              ),
                            )
                          ],
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
    ));
  }
}
