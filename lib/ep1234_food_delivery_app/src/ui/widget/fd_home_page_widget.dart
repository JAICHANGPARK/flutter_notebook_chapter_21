import 'package:flutter/material.dart';

class FdHomePageWidget extends StatelessWidget {
  const FdHomePageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
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
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                      ),
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
          Container(
            margin: EdgeInsets.symmetric(horizontal: 12, vertical: 12),
            height: 52,
            padding: EdgeInsets.symmetric(horizontal: 12),
            decoration: BoxDecoration(
              color: Colors.grey[200],
              borderRadius: BorderRadius.circular(8),
            ),
            child: Center(
              child: TextField(
                decoration: InputDecoration(
                  icon: Icon(Icons.search),
                  hintText: "Search food or resturant",
                  border: InputBorder.none,
                ),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 12),
            height: 140,
            color: Colors.blue,
            child: Column(
              children: [
                Container(
                  color: Colors.pink,
                )
              ],
            ),
          ),
          Container(
            height: 64,
            margin: EdgeInsets.only(left: 12, top: 12, bottom: 12),
            child: ListView.builder(
              itemBuilder: (context, index) {
                return Container(
                  width: 64,
                  margin: EdgeInsets.only(right: 8),
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey[300]!), borderRadius: BorderRadius.circular(4)),
                );
              },
              scrollDirection: Axis.horizontal,
            ),
          )
        ],
      ),
    );
  }
}
