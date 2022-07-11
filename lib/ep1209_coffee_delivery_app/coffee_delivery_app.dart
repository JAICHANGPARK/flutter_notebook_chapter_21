import 'package:flutter/material.dart';
import 'package:flutter_notebook_chapter_21/ep1209_coffee_delivery_app/src/ui/coffee_delivery_main_sreen.dart';

class CoffeeDeliveryApp extends StatelessWidget {
  const CoffeeDeliveryApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        "/": (context) => CoffeeDeliveryMainScreen(),
      },
    );
  }
}
