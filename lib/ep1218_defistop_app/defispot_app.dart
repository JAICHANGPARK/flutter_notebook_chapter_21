import 'package:flutter/material.dart';
import 'package:flutter_notebook_chapter_21/ep1218_defistop_app/src/ui/defispot_coin_detail_page.dart';

class DefispotApp extends StatelessWidget {
  const DefispotApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefispotCoinDetailpage(),

    );
  }
}
