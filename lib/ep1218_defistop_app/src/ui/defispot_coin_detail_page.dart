import 'package:flutter/material.dart';

class DefispotCoinDetailpage extends StatefulWidget {
  const DefispotCoinDetailpage({Key? key}) : super(key: key);

  @override
  State<DefispotCoinDetailpage> createState() => _DefispotCoinDetailpageState();
}

class _DefispotCoinDetailpageState extends State<DefispotCoinDetailpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              height: 72,
            ),
            Divider(
              color: Colors.grey,
            ),
          ],
        ),
      ),
    );
  }
}
