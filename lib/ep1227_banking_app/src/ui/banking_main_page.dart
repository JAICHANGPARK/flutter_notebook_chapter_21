import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_notebook_chapter_21/ep1227_banking_app/src/provider/banking_index_provider.dart';
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
                          return SingleChildScrollView(
                              child: Padding(
                            padding: EdgeInsets.symmetric(horizontal: 16),
                            child: Column(
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(top: 16),
                                  child: Row(
                                    children: [
                                      CircleAvatar(
                                        backgroundColor: Colors.grey,
                                      ),
                                      SizedBox(
                                        width: 16,
                                      ),
                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "Dreamwalker",
                                            style: TextStyle(
                                              color: Colors.white,
                                            ),
                                          ),
                                          SizedBox(
                                            height: 6,
                                          ),
                                          Row(
                                            children: [
                                              Text(
                                                "Switch account",
                                                style: TextStyle(
                                                  color: Colors.grey,
                                                ),
                                              ),
                                              Icon(
                                                Icons.arrow_drop_down,
                                                color: Colors.grey,
                                              ),
                                            ],
                                          )
                                        ],
                                      ),
                                      Spacer(),
                                      IconButton(
                                        onPressed: () {},
                                        icon: Icon(
                                          CupertinoIcons.search,
                                        ),
                                        color: Colors.white,
                                      )
                                    ],
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.symmetric(vertical: 16),
                                  decoration: BoxDecoration(
                                    color: Colors.blueAccent,
                                    borderRadius: BorderRadius.circular(4),
                                  ),
                                  padding: EdgeInsets.symmetric(
                                    horizontal: 16,
                                    vertical: 8,
                                  ),
                                  child: Row(
                                    children: [
                                      Icon(
                                        Icons.notifications,
                                        color: Colors.white,
                                        size: 20,
                                      ),
                                      SizedBox(
                                        width: 6,
                                      ),
                                      Text(
                                        "12 New notification",
                                        style: TextStyle(
                                          color: Colors.white,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: 36,
                                  child: ListView(
                                    shrinkWrap: true,
                                    scrollDirection: Axis.horizontal,
                                    children: [
                                      Container(
                                        margin: EdgeInsets.only(right: 16),
                                        padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                                        decoration: BoxDecoration(
                                          color: Colors.white.withOpacity(0.2),
                                          borderRadius: BorderRadius.circular(4),
                                        ),
                                        child: Center(
                                          child: Text(
                                            "Accounts",
                                            style: TextStyle(
                                              color: Colors.white,
                                            ),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        margin: EdgeInsets.only(right: 16),
                                        padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                                        decoration: BoxDecoration(
                                          color: Colors.white.withOpacity(0),
                                          borderRadius: BorderRadius.circular(4),
                                        ),
                                        child: Center(
                                          child: Text(
                                            "Cards",
                                            style: TextStyle(
                                              color: Colors.grey,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),

                              ],
                            ),
                          ));
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
                        color: Colors.blueAccent,
                      ),
                      IconButton(
                        iconSize: 32,
                        onPressed: () {
                          ref.read(bankingMenuIndex.notifier).state = 1;
                        },
                        icon: Icon(Icons.bar_chart),
                        color: Colors.grey,
                      ),
                      IconButton(
                        iconSize: 32,
                        onPressed: () {
                          ref.read(bankingMenuIndex.notifier).state = 2;
                        },
                        icon: Icon(Icons.add_card_outlined),
                        color: Colors.grey,
                      ),
                      IconButton(
                        iconSize: 32,
                        onPressed: () {
                          ref.read(bankingMenuIndex.notifier).state = 3;
                        },
                        icon: Icon(Icons.account_circle_outlined),
                        color: Colors.grey,
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
