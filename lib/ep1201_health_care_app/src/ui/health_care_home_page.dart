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

          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Container(
          height: 64,
          child: Row(
            children: [

            ],
          ),
        ),
      ),
    );
  }
}
