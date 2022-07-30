import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_notebook_chapter_21/ep1227_banking_app/src/provider/banking_index_provider.dart';
import 'package:flutter_notebook_chapter_21/ep1227_banking_app/src/ui/bank_home_widget.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class BankingMainPage extends StatefulWidget {
  const BankingMainPage({Key? key}) : super(key: key);

  @override
  State<BankingMainPage> createState() => _BankingMainPageState();
}

class _BankingMainPageState extends State<BankingMainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Stack(
          children: [
            Positioned(
              left: 0,
              right: 0,
              top: 0,
              bottom: 0,
              child: Consumer(
                builder: (context, ref, _) {
                  AsyncValue<int> indexValue = ref.watch(bankingMainIndexProvider);
                  return indexValue.when(
                    data: (d) {
                      switch (d) {
                        case 0:
                          return BankHomeWidget();
                      }
                      return Container(
                        child: Center(
                          child: Text(
                            d.toString(),
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 64,
                            ),
                          ),
                        ),
                      );
                    },
                    error: (e, s) {
                      return Text(e.toString());
                    },
                    loading: () => Center(
                      child: CircularProgressIndicator(),
                    ),
                  );
                },
              ),
            ),
            Positioned(
              bottom: 0,
              right: 0,
              left: 0,
              child: Consumer(builder: (context, ref, _) {
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
                        onPressed: () {
                          ref.read(bankingMenuIndex.notifier).state = 1;
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
              }),
            )
          ],
        ),
      ),
    );
  }
}
