import 'package:flutter/material.dart';

class CoffeeMenuPage extends StatefulWidget {
  const CoffeeMenuPage({Key? key}) : super(key: key);

  @override
  State<CoffeeMenuPage> createState() => _CoffeeMenuPageState();
}

class _CoffeeMenuPageState extends State<CoffeeMenuPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Menu"),
        centerTitle: true,
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 0,
      ),
      body: SafeArea(
        child: Stack(
          children: [
            Positioned(
              left: 16,
              right: 16,
              bottom: 0,
              top: 0,
              child: Column(
                children: [],
              ),
            ),
            Positioned(
              right: 16,
              bottom: 32,
              child: SizedBox(
                height: 58,
                width: 58,
                child: Stack(
                  children: [
                    Positioned(
                      left: 0,
                      right: 0,
                      top: 0,
                      bottom: 0,
                      child: CircleAvatar(
                        backgroundColor: Colors.red[200],
                        child: Icon(Icons.shopping_bag_outlined),
                        foregroundColor: Colors.black,
                      ),
                    ),
                    Positioned(
                      right: 0,
                      top: 0,
                      child: CircleAvatar(
                        radius: 10,
                        backgroundColor: Colors.black,
                        child: Text(
                          "3",
                          style: TextStyle(fontSize: 12),
                        ),
                        foregroundColor: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
