import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

TextStyle skyrentTitle = GoogleFonts.federo(
  fontSize: 42,
  fontWeight: FontWeight.w600,
);

class SkyrentAboutUsPage extends StatelessWidget {
  const SkyrentAboutUsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 16,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 72,
              ),
              Text(
                "ABOUT US",
                style: GoogleFonts.federo(
                  fontSize: 32,
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(
                height: 32,
              ),
              Text(
                "Our service since 1999 always allows",
                style: GoogleFonts.federo(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: Colors.grey,
                ),
              ),
              Text(
                "you to quickly find a comforatable apartment",
                style: GoogleFonts.federo(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: Colors.grey,
                ),
              ),
              SizedBox(
                height: 32,
              ),
              Expanded(
                child: ListView(
                  children: [
                    Container(
                      height: 240,
                      decoration: BoxDecoration(
                        color: Colors.blue,
                      ),
                      child: Stack(
                        children: [
                          Positioned(
                              left: 0,
                              right: 0,
                              top: 0,
                              bottom: 42,
                              child: Container(
                                decoration: BoxDecoration(
                                  border: Border.all(),
                                ),
                              )),
                          Positioned(
                            left: 24,
                            bottom: 0,
                            child: Container(
                              height: 52,
                              decoration: BoxDecoration(
                                border: Border.all(),
                              ),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 72,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
