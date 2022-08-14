import 'package:flutter/material.dart';
import 'package:flutter_notebook_chapter_21/ep1241_skyrent_app/src/skyrent_about_us_page.dart';
import 'package:flutter_notebook_chapter_21/ep1241_skyrent_app/src/skyrent_start_page.dart';
import 'package:google_fonts/google_fonts.dart';

class SkyrentHomePage extends StatelessWidget {
  const SkyrentHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      endDrawer: Drawer(
        child: ListView(
          children: [
            ListTile(
              title: Text(
                "Aout Us",
                style: GoogleFonts.federo(
                  fontSize: 24,
                ),
              ),
              onTap: () {
                scaffoldKey2.currentState!.closeEndDrawer();
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => SkyrentAboutUsPage(),
                  ),
                );
              },
            ),
            Divider(),
          ],
        ),
      ),
      key: scaffoldKey2,
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(12.0),
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
                    onPressed: () {
                      scaffoldKey2.currentState!.openEndDrawer();
                      // scaffoldKey.currentState!.openEndDrawer();
                    },
                    icon: Icon(
                      Icons.menu,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
