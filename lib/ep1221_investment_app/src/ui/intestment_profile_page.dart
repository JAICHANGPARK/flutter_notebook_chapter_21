import 'package:flutter/material.dart';

class InvestmentProfilePage extends StatefulWidget {
  const InvestmentProfilePage({Key? key}) : super(key: key);

  @override
  State<InvestmentProfilePage> createState() => _InvestmentProfilePageState();
}

class _InvestmentProfilePageState extends State<InvestmentProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          Row(
            children: [
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.arrow_back,
                ),
              ),
              Container(
                child: IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.add),
                  color: Colors.white,
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
