import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_notebook_chapter_21/ep1244_skin_care_app/src/data/skin_care_data.dart';
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
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: skinCareHomeItems.length,
                        itemBuilder: (context, index) {
                          var item = skinCareHomeItems[index];
                          return Container(
                            width: 160,
                            margin: EdgeInsets.only(right: 8),
                            decoration: BoxDecoration(border: Border.all()),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Expanded(
                                  child: Container(
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                        image: NetworkImage(
                                          item.img ??
                                              "https://cdn.pixabay.com/photo/2017/03/30/18/17/girl-2189247_960_720.jpg",
                                        ),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    item.title ?? "Facial Tools",
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
                          child: Stack(
                            children: [
                              Positioned(
                                left: 64,
                                top: 8,
                                bottom: 4,
                                right: 0,
                                child: Container(
                                  padding: EdgeInsets.only(
                                    left: 16,
                                    top: 8,
                                    bottom: 8,
                                    right: 8,
                                  ),
                                  color: Colors.grey[200],
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        children: [
                                          ...List.generate(
                                            5,
                                            (index) => Icon(
                                              Icons.star,
                                              size: 12,
                                              color: Colors.brown,
                                            ),
                                          ),
                                          SizedBox(
                                            width: 4,
                                          ),
                                          Text(
                                            "(305 reviews)",
                                            style: TextStyle(
                                              fontSize: 12,
                                              color: Colors.grey,
                                            ),
                                          ),
                                          Spacer(),
                                          IconButton(
                                            onPressed: () {},
                                            icon: Icon(Icons.bookmark_border),
                                          ),
                                        ],
                                      ),
                                      Text(
                                        "Vitamin C Face Serum",
                                        style: GoogleFonts.cormorantGaramond(
                                          fontSize: 20,
                                          decoration: TextDecoration.underline,
                                        ),
                                      ),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            "\$ 39.99",
                                            style: GoogleFonts.cormorantGaramond(
                                              fontSize: 20,
                                              color: Colors.brown,
                                            ),
                                          ),
                                          Spacer(),
                                          Icon(
                                            Icons.remove,
                                            size: 12,
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.symmetric(horizontal: 8),
                                            child: Text(
                                              "01",
                                              style: TextStyle(
                                                fontSize: 12,
                                              ),
                                            ),
                                          ),
                                          Icon(
                                            Icons.add,
                                            size: 12,
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              Positioned(
                                  left: 0,
                                  top: 0,
                                  bottom: 0,
                                  child: Container(
                                    width: 64,
                                    color: Colors.blue,
                                    child: Center(
                                      child: Text("Place Picture"),
                                    ),
                                  ))
                            ],
                          ),
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
