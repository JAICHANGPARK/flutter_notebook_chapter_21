import 'package:flutter/material.dart';
import 'package:flutter_notebook_chapter_21/ep1234_food_delivery_app/src/provider/fd_page_index.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class FdBottomBarWidget extends ConsumerWidget {
  const FdBottomBarWidget({super.key});

  @override
  Widget build(BuildContext context, ref) {
    final index = ref.watch(fdPageIndex);
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      selectedItemColor: Colors.teal,
      unselectedItemColor: Colors.grey,
      currentIndex: index,
      onTap: (idx) {
        ref.refresh(fdPageIndex.state).state = idx;
      },
      items: [
        BottomNavigationBarItem(icon: Icon(Icons.add_home_work_outlined), label: "Home"),
        BottomNavigationBarItem(icon: Icon(Icons.list_alt), label: "Orders"),
        BottomNavigationBarItem(icon: Icon(Icons.inventory_2_outlined), label: "7Kmart"),
        BottomNavigationBarItem(icon: Icon(Icons.stars_outlined), label: "Pro"),
        BottomNavigationBarItem(icon: Icon(Icons.person_outline), label: "Account"),
      ],
    );
  }
}
