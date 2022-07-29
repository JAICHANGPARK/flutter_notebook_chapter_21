import 'package:flutter/material.dart';
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
              child: Consumer(
                builder: (context, ref, _) {
                  AsyncValue<int> indexValue = ref.watch(bankingMainIndexProvider);
                  return indexValue.when(
                      data: (d) {
                        return Container();
                      }, error: (e, s) {
                    return Text(e.toString())
                    ,
                  }, loading: () => Center(child: CircularProgressIndicator(),));
                },
              ),
              left: 0,
              right: 0,
              top: 0,
              bottom: 0,
            ),

          ],
        ),
      ),
    );
  }
}
