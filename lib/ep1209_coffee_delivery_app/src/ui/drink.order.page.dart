import 'package:flutter/material.dart';
import 'package:flutter_notebook_chapter_21/ep1209_coffee_delivery_app/src/model/menu_item.dart';

class DrinkOrderPage extends StatefulWidget {
  final CoffeeMenuItem? menuItem;

  const DrinkOrderPage({Key? key, this.menuItem}) : super(key: key);

  @override
  State<DrinkOrderPage> createState() => _DrinkOrderPageState();
}

class _DrinkOrderPageState extends State<DrinkOrderPage> {
  int itemCount = 1;

  void incrementItem() {
    setState(() {
      itemCount++;
    });
  }

  void decrementItem() {
    setState(() {
      itemCount--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 0,
      ),
      body: SafeArea(
          child: Stack(
        children: [
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            child: Container(
              height: 72,
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(24),
                  topLeft: Radius.circular(24),
                ),
              ),
              child: Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      decrementItem();
                    },
                    child: Container(
                      height: 54,
                      width: 54,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: Colors.white,
                        ),
                      ),
                      child: Center(
                        child: Icon(
                          Icons.remove,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  Text(
                    "$itemCount",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  GestureDetector(
                    onTap: incrementItem,
                    child: Container(
                      height: 54,
                      width: 54,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: Colors.white,
                        ),
                      ),
                      child: Center(
                        child: Icon(
                          Icons.add,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      )),
    );
  }
}
