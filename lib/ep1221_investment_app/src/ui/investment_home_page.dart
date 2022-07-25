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
        backgroundColor: Colors.black,
        showUnselectedLabels: false,
        showSelectedLabels: false,
        selectedItemColor: Color.fromRGBO(35, 183, 95, 1),
        unselectedItemColor: Colors.grey,
        type: BottomNavigationBarType.fixed,
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
          ),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.group,
              ),
              label: "Person"
          ),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.notifications,
              ),
              label: "Notification"
          ),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.person,
              ),
              label: "Person"
          )
        ],
      ),
    );
  }
}
