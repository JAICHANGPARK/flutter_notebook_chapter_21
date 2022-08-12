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
            Row(
              children: [
                Text(
                  "Skyrent",
                  style: GoogleFonts.federo(
                    fontSize: 28,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
