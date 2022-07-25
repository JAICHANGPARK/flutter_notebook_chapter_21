import 'package:flutter/material.dart';

class InvestmentHomePage extends StatefulWidget {
  const InvestmentHomePage({Key? key}) : super(key: key);

  @override
  State<InvestmentHomePage> createState() => _InvestmentHomePageState();
}

class _InvestmentHomePageState extends State<InvestmentHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Color.fromRGBO(35, 183, 95, 1),
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
            ),
            label: "Home"
          ),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.search,
              ),
              label: "Search"
          )
        ],
      ),
    );
  }
}
