import 'package:flutter/material.dart';
import 'package:flutter_notebook_chapter_21/ep1221_investment_app/src/ui/intestment_profile_page.dart';
import 'package:flutter_notebook_chapter_21/ep1221_investment_app/src/ui/investment_home_page.dart';

class InvestmentApp extends StatelessWidget {
  const InvestmentApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: "/",
      routes: {
        "/": (context) => InvestmentHomePage(),
        "/profile": (context) => InvestmentProfilePage(),
      },
    );
  }
}
