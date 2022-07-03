import 'package:badges/badges.dart';
import 'package:flutter/material.dart';

class HealthCareHomePage extends StatefulWidget {
  const HealthCareHomePage({Key? key}) : super(key: key);

  @override
  State<HealthCareHomePage> createState() => _HealthCareHomePageState();
}

class _HealthCareHomePageState extends State<HealthCareHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: 52,
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                      decoration: BoxDecoration(
                        color: Colors.grey[200],
                      ),
                    ),
                  ),
                  Badge(
                    child: Icon(Icons.message_outlined),
                    badgeContent: Text(
                      "3",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.account_circle,
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Container(
          height: 64,
          child: Row(
            children: [],
          ),
        ),
      ),
    );
  }
}
