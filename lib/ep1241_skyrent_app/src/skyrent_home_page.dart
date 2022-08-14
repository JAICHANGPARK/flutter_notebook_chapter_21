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
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(0.0),
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
              SizedBox(
                height: 64,
              ),
              Container(
                height: 220,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(
                      "https://cdn.pixabay.com/photo/2016/11/22/19/17/buildings-1850129_960_720.jpg",
                    ),
                    colorFilter: ColorFilter.mode(
                      Colors.black.withOpacity(1),
                      BlendMode.color,
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(
                height: 24,
              ),
              Text("20 July, 2022"),
              SizedBox(
                height: 8,
              ),
              Text(
                "THE COST OF RENTING A HOUSE IN THE USA",
                style: GoogleFonts.federo(
                  fontSize: 24,
                ),
              ),
              SizedBox(
                height: 24,
              ),
              Text(
                "Hot much does it cost to renta house in the USA? First of all, "
                "this question is asked by those who are planning threir initial budget for "
                "moving to the United States.",
                style: GoogleFonts.federo(
                  fontSize: 16,
                  color: Colors.black.withOpacity(0.6),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
