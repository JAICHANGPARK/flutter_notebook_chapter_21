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
            child: SizedBox(
              height: 72,
              width: 72,
            ),
            right: 16,
            bottom: 84,
          )
        ],
      ),
    );
  }
}
