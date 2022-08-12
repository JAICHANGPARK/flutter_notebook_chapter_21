import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SkyrentStartPage extends StatelessWidget {
  const SkyrentStartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Skyrent",
                    style: GoogleFonts.federo(
                      fontSize: 28,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.menu,
                    ),
                  ),
                ],
              ),
            ),
            Text(
              "APARTMENTS",
              style: GoogleFonts.federo(
                fontSize: 32,
                fontWeight: FontWeight.w500,
              ),
            ),
            Text("FOR RENT IN NYC")
          ],
        ),
      ),
    );
  }
}
