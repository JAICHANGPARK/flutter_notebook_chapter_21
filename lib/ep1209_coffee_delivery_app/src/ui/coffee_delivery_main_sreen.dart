import 'package:flutter/material.dart';

class CoffeeDeliveryMainScreen extends StatefulWidget {
  const CoffeeDeliveryMainScreen({Key? key}) : super(key: key);

  @override
  State<CoffeeDeliveryMainScreen> createState() => _CoffeeDeliveryMainScreenState();
}

class _CoffeeDeliveryMainScreenState extends State<CoffeeDeliveryMainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            child: SingleChildScrollView(
              child: Column(
                children: [],
              ),
            ),
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            child: Container(
              height: 72,
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(24),
                  topRight: Radius.circular(24),
                ),
              ),
            ),
          ),
          Positioned(
            right: 16,
            bottom: 84,
            child: SizedBox(
              height: 58,
              width: 58,
              child: Stack(
                children: [
                  Positioned(
                    left: 0,
                    right: 0,
                    top: 0,
                    bottom: 0,
                    child: CircleAvatar(
                      backgroundColor: Colors.red[200],
                      child: Icon(Icons.shopping_bag_outlined),
                      foregroundColor: Colors.black,
                    ),
                  ),
                  Positioned(
                    right: 0,
                    top: 0,
                    child: CircleAvatar(
                      radius: 10,
                      backgroundColor: Colors.black,
                      child: Text(
                        "3",
                        style: TextStyle(fontSize: 12),
                      ),
                      foregroundColor: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
