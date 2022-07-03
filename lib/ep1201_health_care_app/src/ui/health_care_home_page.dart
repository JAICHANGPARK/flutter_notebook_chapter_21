import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:flutter_notebook_chapter_21/ep1201_health_care_app/src/health_care_style.dart';

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
                        color: Colors.grey[100],
                        borderRadius: BorderRadius.circular(16),
                      ),
                      padding: EdgeInsets.symmetric(vertical: 0, horizontal: 8),
                      child: TextField(
                        decoration: InputDecoration(
                          icon: Icon(Icons.search),
                          // contentPadding: EdgeInsets.symmetric(horizontal: 8),
                          hintText: "Search...",
                          border: InputBorder.none,
                        ),
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
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [],
                ),
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Container(
          height: 72,
          padding: EdgeInsets.symmetric(horizontal: 4),
          child: Row(
            children: [
              Expanded(
                child: Column(
                  children: [
                    Container(
                      height: 3,
                      color: healthCarePrimaryColor,
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.bar_chart),
                      iconSize: 32,
                      color: healthCarePrimaryColor,
                    ),
                    Text(
                      "Home",
                      style: TextStyle(
                        color: healthCarePrimaryColor,
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Column(
                  children: [
                    Container(
                      height: 3,
                      color: Colors.transparent,
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.bar_chart),
                      iconSize: 32,
                      color: healthCarePrimaryColor,
                    ),
                    Text(
                      "Billing",
                      style: TextStyle(
                        color: healthCarePrimaryColor,
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Column(
                  children: [
                    Container(
                      height: 3,
                      color: Colors.transparent,
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.bar_chart),
                      iconSize: 32,
                      color: healthCarePrimaryColor,
                    ),
                    Text(
                      "Paitents",
                      style: TextStyle(color: healthCarePrimaryColor, fontSize: 12),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Column(
                  children: [
                    Container(
                      height: 3,
                      color: Colors.transparent,
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.bar_chart),
                      iconSize: 32,
                      color: healthCarePrimaryColor,
                    ),
                    Text(
                      "Credentialing",
                      style: TextStyle(color: healthCarePrimaryColor, fontSize: 12),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Column(
                  children: [
                    Container(
                      height: 3,
                      color: Colors.transparent,
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.bar_chart),
                      iconSize: 32,
                      color: healthCarePrimaryColor,
                    ),
                    Text(
                      "Documents",
                      style: TextStyle(color: healthCarePrimaryColor, fontSize: 12),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
