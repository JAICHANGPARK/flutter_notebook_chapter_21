import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SkinDetailPage extends StatefulWidget {
  const SkinDetailPage({Key? key}) : super(key: key);

  @override
  State<SkinDetailPage> createState() => _SkinDetailPageState();
}

class _SkinDetailPageState extends State<SkinDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: 8,
            ),
            Row(
              children: [
                IconButton(
                  onPressed: () => Navigator.of(context).pop(),
                  icon: Icon(
                    Icons.arrow_back_ios_new,
                  ),
                ),
                Expanded(
                  child: Center(
                    child: Text(
                      "SkinLab",
                      style: GoogleFonts.cormorantGaramond(
                        fontSize: 28,
                        // fontWeight: FontWeight.w300,
                      ),
                    ),
                  ),
                ),
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
                        bottom: 2,
                        child: CircleAvatar(
                          radius: 6,
                          backgroundColor: Colors.black,
                          foregroundColor: Colors.white,
                          child: Text(
                            "3",
                            style: TextStyle(
                              fontSize: 10,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
