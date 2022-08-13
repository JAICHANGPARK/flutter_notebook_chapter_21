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
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 16,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "ABOUT US",
                style: GoogleFonts.federo(
                  fontSize: 32,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Text("Our service since 1999 always allows"),
              Text("you to quickly find a comforatable apartment"),
            ],
          ),
        ),
      ),
    );
  }
}
