import 'package:flutter/material.dart';
import 'package:flutter_notebook_chapter_21/ep1206_looksie_seller_app/src/ui/looksie.seller.home.page.dart';


class LooksieSellerApp extends StatelessWidget {
  const LooksieSellerApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LooksieSellerHomePage(),
    );
  }
}
