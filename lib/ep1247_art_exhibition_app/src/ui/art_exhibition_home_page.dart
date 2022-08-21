import 'package:flutter/material.dart';
import 'package:flutter_notebook_chapter_21/ep1247_art_exhibition_app/src/ui/art_detail_page.dart';
import 'package:flutter_notebook_chapter_21/global_utils/global_text_util.dart';
import 'package:flutter_notebook_chapter_21/ep1247_art_exhibition_app/src/data/art_data.dart';

class ArtExhibitionHomePage extends StatefulWidget {
  const ArtExhibitionHomePage({Key? key}) : super(key: key);

  @override
  State<ArtExhibitionHomePage> createState() => _ArtExhibitionHomePageState();
}

class _ArtExhibitionHomePageState extends State<ArtExhibitionHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            top: 0,
            child: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Colors.black.withOpacity(0.8),
                    Colors.black,
                  ],
                ),
              ),
              padding: EdgeInsets.fromLTRB(24, 64, 24, 0),
              child: Column(
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.menu,
                        color: Colors.white,
                      ),
                      Expanded(
                        child: Center(
                          child: Text(
                            "Arexs.",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                            ),
                          ),
                        ),
                      ),
                      Icon(
                        Icons.search,
                        color: Colors.white,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 24,
                  ),
                  Expanded(
                    child: ListView.builder(
                      padding: EdgeInsets.zero,
                      itemCount: artItems.length,
                      itemBuilder: (context, index) {
                        var item = artItems[index];
                        return GestureDetector(
                          onTap: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) => ArtDetailPage(artItem: item,),
                              ),
                            );
                          },
                          child: Hero(
                            tag: "item_$index",
                            child: Container(
                              height: 340,
                              margin: EdgeInsets.only(bottom: 16),
                              child: Stack(
                                children: [
                                  Positioned(
                                    left: 12,
                                    top: 12,
                                    bottom: 0,
                                    right: 0,
                                    child: Container(
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    left: 0,
                                    top: 0,
                                    bottom: 12,
                                    right: 12,
                                    child: Container(
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                      ),
                                      padding: EdgeInsets.all(8),
                                      child: Column(
                                        children: [
                                          Container(
                                            height: 160,
                                            decoration: BoxDecoration(
                                              color: Colors.black,
                                              image: DecorationImage(
                                                image: NetworkImage(
                                                  item.img ?? "",
                                                  // "https://cdn.pixabay.com/photo/2016/09/08/20/22/angel-1655378__340.jpg",
                                                ),
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                          ),
                                          SizedBox(
                                            height: 16,
                                          ),
                                          Expanded(
                                            child: Row(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                CircleAvatar(
                                                  radius: 24,
                                                ),
                                                SizedBox(
                                                  width: 16,
                                                ),
                                                Expanded(
                                                  child: Column(
                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                                    children: [
                                                      Text(
                                                        // "Can you hear me?",
                                                        item.title ?? "",
                                                        style: TextStyle(
                                                          fontWeight: FontWeight.bold,
                                                        ),
                                                      ),
                                                      Text(
                                                        // "Zack Jarosz",
                                                        item.name ?? "",
                                                        style: TextStyle(fontSize: 12),
                                                      ),
                                                      Row(
                                                        children: [
                                                          Icon(
                                                            Icons.thumb_up_alt_outlined,
                                                            size: 14,
                                                          ),
                                                          SizedBox(
                                                            width: 4,
                                                          ),
                                                          Text(
                                                            // "123",
                                                            item.like ?? "",
                                                          ),
                                                          SizedBox(
                                                            width: 12,
                                                          ),
                                                          Icon(
                                                            Icons.chat_bubble_outline_outlined,
                                                            size: 14,
                                                          ),
                                                          SizedBox(
                                                            width: 4,
                                                          ),
                                                          Text(
                                                            item.comments ?? "34",
                                                          ),
                                                          SizedBox(
                                                            width: 12,
                                                          ),
                                                          Icon(
                                                            Icons.visibility_outlined,
                                                            size: 14,
                                                          ),
                                                          SizedBox(
                                                            width: 4,
                                                          ),
                                                          Text(
                                                            // "8.9m",
                                                            item.distance ?? "8.9m",
                                                          ),
                                                        ],
                                                      ),
                                                      SizedBox(
                                                        height: 8,
                                                      ),
                                                      Text(
                                                        // loremIpsum.substring(0, 100),
                                                        item.description ?? "",
                                                        style: TextStyle(
                                                          fontSize: 12,
                                                          color: Colors.grey,
                                                        ),
                                                      ),
                                                      Text("Read more"),
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            child: Column(
              children: [
                Divider(
                  height: 1.5,
                  color: Colors.white,
                ),
                Container(
                  color: Colors.black,
                  height: 84,
                  padding: EdgeInsets.symmetric(horizontal: 32),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Home",
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Container(
                            color: Colors.white,
                            height: 1.5,
                            width: 42,
                          )
                        ],
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.search),
                        color: Colors.white,
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.thumb_up_alt_outlined),
                        color: Colors.white,
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.person_outline),
                        color: Colors.white,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
