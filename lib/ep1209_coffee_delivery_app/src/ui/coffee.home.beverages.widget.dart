import 'package:flutter/material.dart';


class CoffeeHomeBeveragesWidget extends StatelessWidget {
  const CoffeeHomeBeveragesWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Container(
      height: 180,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Beverages",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              TextButton(
                onPressed: () {},
                child: Text("View all"),
                style: TextButton.styleFrom(
                  primary: Colors.pinkAccent[100],
                ),
              ),
            ],
          ),
          Expanded(
            child: GridView.count(
              crossAxisCount: 2,
              crossAxisSpacing: 16,
              mainAxisSpacing: 16,
              childAspectRatio: 12 / 4,
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.circular(32),
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 8),
                  child: Row(
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.white,
                        foregroundColor: Colors.black,
                        child: Icon(Icons.coffee),
                      ),
                      SizedBox(
                        width: 16,
                      ),
                      Text(
                        "Signatured",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.circular(32),
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 8),
                  child: Row(
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.white,
                        foregroundColor: Colors.black,
                        child: Icon(Icons.coffee),
                      ),
                      SizedBox(
                        width: 16,
                      ),
                      Text(
                        "Iced Coffee",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.circular(32),
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 8),
                  child: Row(
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.white,
                        foregroundColor: Colors.black,
                        child: Icon(Icons.coffee),
                      ),
                      SizedBox(
                        width: 16,
                      ),
                      Text(
                        "Hot Coffee",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.circular(32),
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 8),
                  child: Row(
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.white,
                        foregroundColor: Colors.black,
                        child: Icon(Icons.coffee),
                      ),
                      SizedBox(
                        width: 16,
                      ),
                      Text(
                        "Chocolate",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
