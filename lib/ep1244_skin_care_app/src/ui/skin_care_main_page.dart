import 'package:flutter/material.dart';

class SkinCareMainPage extends StatefulWidget {
  const SkinCareMainPage({Key? key}) : super(key: key);

  @override
  State<SkinCareMainPage> createState() => _SkinCareMainPageState();
}

class _SkinCareMainPageState extends State<SkinCareMainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            Row(
              children: [
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.menu,
                  ),
                ),
                Expanded(
                    child: Center(
                  child: Text("SkinLab"),
                )),
                Container(
                  height: 38,
                  width: 38,
                  child: Stack(
                    children: [
                      Positioned(
                        left: 0,
                        right: 0,
                        bottom: 0,
                        top: 0,
                        child: IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.shopping_bag_outlined,
                          ),
                        ),
                      ),
                      Positioned(
                        left: 6,
                        bottom: 4,
                        child: CircleAvatar(
                          radius: 6,
                          backgroundColor: Colors.black,
                        ),
                      )
                    ],
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
