import 'package:flutter/material.dart';


class FashinexMainPage extends StatefulWidget {
  const FashinexMainPage({Key? key}) : super(key: key);

  @override
  State<FashinexMainPage> createState() => _FashinexMainPageState();
}

class _FashinexMainPageState extends State<FashinexMainPage> {
  int screenIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
    );
  }
}
