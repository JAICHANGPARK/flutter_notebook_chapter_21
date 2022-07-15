import 'package:flutter/material.dart';
import 'package:flutter_notebook_chapter_21/ep1209_coffee_delivery_app/src/model/menu_item.dart';

class DrinkOrderPage extends StatefulWidget {
  final CoffeeMenuItem? menuItem;
  const DrinkOrderPage({Key? key, this.menuItem}) : super(key: key);

  @override
  State<DrinkOrderPage> createState() => _DrinkOrderPageState();
}

class _DrinkOrderPageState extends State<DrinkOrderPage> {
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
          Positioned(child: Container()),
        ],
      )),
    );
  }
}
