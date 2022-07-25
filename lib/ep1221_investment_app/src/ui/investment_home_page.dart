import 'package:flutter/material.dart';

class InvestmentHomePage extends StatefulWidget {
  const InvestmentHomePage({Key? key}) : super(key: key);

  @override
  State<InvestmentHomePage> createState() => _InvestmentHomePageState();
}

class _InvestmentHomePageState extends State<InvestmentHomePage> {
  int _index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          Positioned(
            left: 0,
            top: 0,
            right: 0,
            bottom: 0,
            child: Container(
              decoration: BoxDecoration(
                  gradient: LinearGradient(colors: [
                Colors.black,
                Colors.black,
                Colors.black.withOpacity(0.5),
                Colors.black.withOpacity(0.5),
                // Color.fromRGBO(35, 183, 95, 0.4),
                Color.fromRGBO(35, 183, 95, 0.7),
              ], begin: Alignment.bottomLeft, end: Alignment.topRight)),
            ),
          ),
          Positioned(
            left: 0,
            top: 48,
            bottom: 0,
            right: 0,
            child: SingleChildScrollView(
              child: Column(
                children: [],
              ),
            ),
          )
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _index,
        onTap: (idx) {
          setState(() {
            _index = idx;
          });
        },
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
              label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.search,
              ),
              label: "Search"),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.group,
              ),
              label: "Person"),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.notifications,
              ),
              label: "Notification"),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.person,
              ),
              label: "Person")
        ],
      ),
    );
  }
}
