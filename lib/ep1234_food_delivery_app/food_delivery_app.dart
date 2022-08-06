import 'package:flutter/material.dart';
import 'package:flutter_notebook_chapter_21/ep1234_food_delivery_app/src/provider/fd_page_index.dart';
import 'package:flutter_notebook_chapter_21/ep1234_food_delivery_app/src/ui/food_delivery_home_page.dart';
import 'package:flutter_notebook_chapter_21/ep1234_food_delivery_app/src/ui/widget/fd_bottom_bar_widget.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class FoodDeliveryApp extends StatelessWidget {
  const FoodDeliveryApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: FdDeliveryHomeWidget(),
    );
  }
}
