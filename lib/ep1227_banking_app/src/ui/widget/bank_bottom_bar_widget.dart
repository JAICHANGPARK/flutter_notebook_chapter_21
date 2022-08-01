import 'package:flutter/material.dart';
import 'package:flutter_notebook_chapter_21/ep1227_banking_app/src/provider/banking_index_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';


class BankBottomBarWidget extends ConsumerWidget {
  const BankBottomBarWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, ref) {
    final index = ref.watch(bankingMenuIndex);
    return Container(
      height: 84,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(8),
          topLeft: Radius.circular(8),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          IconButton(
            iconSize: 32,
            onPressed: () {
              ref.read(bankingMenuIndex.notifier).state = 0;

            },
            icon: Icon(Icons.home_filled),
            color: index == 0 ? Colors.blueAccent : Colors.grey,
          ),
          IconButton(
            iconSize: 32,
            onPressed: () async{
              ref.read(bankingMenuIndex.notifier).state = 1;

              ref.refresh(bankingMainIndexProvider);
              await ref.read(bankingMainIndexProvider.future);
            },
            icon: Icon(Icons.bar_chart),
            color: index == 1 ? Colors.blueAccent : Colors.grey,
          ),
          IconButton(
            iconSize: 32,
            onPressed: () {
              ref.read(bankingMenuIndex.notifier).state = 2;
            },
            icon: Icon(Icons.add_card_outlined),
            color: index ==2 ? Colors.blueAccent : Colors.grey,
          ),
          IconButton(
            iconSize: 32,
            onPressed: () {
              ref.read(bankingMenuIndex.notifier).state = 3;
            },
            icon: Icon(Icons.account_circle_outlined),
            color: index == 3 ? Colors.blueAccent : Colors.grey,
          )
        ],
      ),
    );
  }
}
