import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_notebook_chapter_21/ep1227_banking_app/src/provider/banking_index_provider.dart';
import 'package:flutter_notebook_chapter_21/ep1227_banking_app/src/ui/bank_bottom_bar_widget.dart';
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
              child: BankBottomBarWidget(),
            )
          ],
        ),
      ),
    );
  }
}
