import 'package:flutter/material.dart';
import 'package:flutter_notebook_chapter_21/ep1234_food_delivery_app/src/provider/fd_page_index.dart';
import 'package:flutter_notebook_chapter_21/ep1234_food_delivery_app/src/ui/widget/fd_bottom_bar_widget.dart';
import 'package:flutter_notebook_chapter_21/ep1234_food_delivery_app/src/ui/widget/fd_home_page_widget.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class FdDeliveryHomeWidget extends ConsumerWidget {
  const FdDeliveryHomeWidget({super.key});

  @override
  Widget build(BuildContext context, ref) {
    final index = ref.watch(fdPageIndex);
    return Scaffold(
        bottomNavigationBar: FdBottomBarWidget(),
        body: SafeArea(
          child: IndexedStack(
            index: index,
            children: [
              FdHomePageWidget(),
              Center(
                child: Text("$index"),
              ),
              Center(
                child: Text("$index"),
              ),
              Center(
                child: Text("$index"),
              ),
              Center(
                child: Text("$index"),
              ),
            ],
          ),
        ));
  }
}
