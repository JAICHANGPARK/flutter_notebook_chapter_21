import 'package:flutter/material.dart';


class FoodDeliveryApp extends StatelessWidget {
  const FoodDeliveryApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: SingleChildScrollView(),
        ),
        bottomNavigationBar: Builder(
          builder: (context) {
            return BottomNavigationBar();
          }
        ),
      ),
    );
  }
}
