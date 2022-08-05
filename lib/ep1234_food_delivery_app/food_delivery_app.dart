import 'package:flutter/material.dart';
import 'package:flutter_notebook_chapter_21/ep1234_food_delivery_app/src/provider/fd_page_index.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';


class FoodDeliveryApp extends StatelessWidget {
  const FoodDeliveryApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: SingleChildScrollView(),
        ),
        bottomNavigationBar: Consumer(
          builder: (context, ref, _) {
            final index = ref.watch(fdPageIndex);
            return BottomNavigationBar();
          }
        ),
      ),
    );
  }
}
