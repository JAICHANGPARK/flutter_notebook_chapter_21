import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 8,
            ),
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
            Padding(
              padding: const EdgeInsets.only(
                left: 16,
                top: 16,
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    child: Container(
                      height: 34,
                      padding: EdgeInsets.symmetric(horizontal: 16),
                      color: Colors.grey[200],
                      child: TextField(
                        decoration: InputDecoration(
                            icon: Icon(
                              CupertinoIcons.search,
                            ),
                            hintText: "Search products...",
                            hintStyle: GoogleFonts.cormorantGaramond(fontSize: 15),
                            border: InputBorder.none),
                      ),
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.tune,
                    ),
                  )
                ],
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 8, left: 16),
                      height: 280,
                      color: Colors.blue,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: 6,
                        itemBuilder: (context, index) {
                          return Container(
                            width: 160,
                            margin: EdgeInsets.only(right: 8),
                            decoration: BoxDecoration(border: Border.all()),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Expanded(
                                    child: Container(
                                  decoration: BoxDecoration(),
                                )),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    "Facial Tools",
                                    style: GoogleFonts.cormorantGaramond(
                                      fontSize: 24,
                                      decoration: TextDecoration.underline,
                                    ),
                                  ),
                                )
                              ],
                            ),
                          );
                        },
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 16, top: 16, bottom: 16),
                      child: Text(
                        "Trending",
                        style: GoogleFonts.cormorantGaramond(
                          fontWeight: FontWeight.w300,
                          fontSize: 24,
                        ),
                        // style: GoogleFonts.federo(
                        //   fontSize: 24,
                        //   fontWeight: FontWeight.normal,
                        // ),
                      ),
                    ),
                    Column(
                      children: List.generate(
                        5,
                        (index) => Container(
                          height: 140,
                          margin: EdgeInsets.only(left: 16, right: 16, bottom: 8),
                          color: Colors.brown,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
