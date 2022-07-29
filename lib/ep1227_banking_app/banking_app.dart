import 'package:flutter/material.dart';
import 'package:flutter_notebook_chapter_21/ep1227_banking_app/src/ui/banking_main_page.dart';


class BankingApp extends StatelessWidget {
  const BankingApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: BankingMainPage(),
    );
  }
}
