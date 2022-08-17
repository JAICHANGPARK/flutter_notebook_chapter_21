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
                        color: Colors.blue,
                      ),
                      Divider(
                        color: Colors.black,
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
                      ),
                      Row(
                        children: [
                          Container(
                            decoration: BoxDecoration(),
                            child: Center(
                              child: Text("Vegan"),
                            ),
                          )
                        ],
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
