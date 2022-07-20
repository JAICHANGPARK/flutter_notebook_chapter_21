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
            Expanded(child: Placeholder()),
            Divider(
              color: Colors.grey,
            ),
            Container(
              height: 72,
              child: Row(
                children: [
                  OutlinedButton.icon(
                    onPressed: () {},
                    icon: Icon(Icons.add),
                    label: Text("Add Liqudity"),
                    style: OutlinedButton.styleFrom(
                      primary: Colors.black,
                      shape: StadiumBorder(),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
