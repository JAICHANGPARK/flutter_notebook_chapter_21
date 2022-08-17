import 'package:flutter/material.dart';
import 'package:flutter_notebook_chapter_21/global_utils/global_text_util.dart';
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
        child: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 8,
            horizontal: 16,
          ),
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
                  ),
                ],
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Vitamin C\nFace Serum",
                            style: GoogleFonts.cormorantGaramond(
                              fontSize: 38,
                            ),
                          ),
                          Spacer(),
                          IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.bookmark_border,
                            ),
                          ),
                        ],
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(vertical: 8),
                        height: 180,
                        child: Stack(
                          children: [
                            Positioned(
                              left: 0,
                              top: 0,
                              bottom: 0,
                              right: 84,
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Colors.grey[200],
                                ),
                              ),
                            ),
                            Positioned(
                              top: 0,
                              bottom: 0,
                              right: 0,
                              child: Container(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    RotatedBox(
                                      quarterTurns: 3,
                                      child: Text("Sensitive"),
                                    ),
                                    Container(
                                      width: 100,
                                      decoration: BoxDecoration(
                                        border: Border.all(),
                                      ),
                                      padding: EdgeInsets.symmetric(vertical: 4),
                                      child: Align(
                                        alignment: Alignment.topRight,
                                        child: RotatedBox(
                                          quarterTurns: 3,
                                          child: Text("Oily"),
                                        ),
                                      ),
                                    ),
                                    RotatedBox(
                                      quarterTurns: 3,
                                      child: Text("Dry"),
                                    ),
                                    RotatedBox(
                                      quarterTurns: 3,
                                      child: Text("Normal"),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Divider(
                        color: Colors.black,
                        height: 24,
                      ),
                      Row(
                        children: [
                          Text("In stock"),
                          Spacer(),
                          Icon(
                            Icons.star,
                            size: 14,
                          ),
                          Icon(
                            Icons.star,
                            size: 14,
                          ),
                          Icon(
                            Icons.star,
                            size: 14,
                          ),
                          Icon(
                            Icons.star,
                            size: 14,
                          ),
                          Icon(
                            Icons.star,
                            size: 14,
                          ),
                          Text("(305 reviews)"),
                          Spacer(),
                          Icon(
                            Icons.message,
                            size: 14,
                          ),
                          Text("152"),
                        ],
                      ),
                      Divider(
                        color: Colors.black,
                        height: 24,
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      Row(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.grey[200],
                            ),
                            padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                            child: Center(
                              child: Text(
                                "Vegan",
                                style: TextStyle(
                                  fontSize: 12,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 16,
                          ),
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.grey[200],
                            ),
                            padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                            child: Center(
                              child: Text(
                                "Cruelty free",
                                style: TextStyle(
                                  fontSize: 12,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      Text(
                        "${loremIpsum.substring(0, 200)}",
                      ),
                      Text("Read more"),
                      SizedBox(
                        height: 16,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.grey[200],
                        ),
                        padding: EdgeInsets.only(
                          left: 16,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "How to Use",
                              style: GoogleFonts.cormorantGaramond(
                                fontSize: 24,
                              ),
                            ),
                            IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.arrow_forward,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.grey[200],
                        ),
                        padding: EdgeInsets.only(
                          left: 16,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Reviews",
                              style: GoogleFonts.cormorantGaramond(
                                fontSize: 24,
                              ),
                            ),
                            IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.arrow_forward,
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Container(
                height: 58,
                decoration: BoxDecoration(border: Border.all()),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 16,
                      ),
                      child: Row(
                        children: [
                          Icon(Icons.remove),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text("01"),
                          ),
                          Icon(Icons.add),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          color: Color.fromRGBO(56, 63, 70, 1),
                        ),
                        child: Center(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.shopping_bag_outlined,
                                color: Colors.white,
                              ),
                              SizedBox(
                                width: 16,
                              ),
                              Text(
                                "\$ 39.99",
                                style: GoogleFonts.cormorantGaramond(
                                  fontSize: 24,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
