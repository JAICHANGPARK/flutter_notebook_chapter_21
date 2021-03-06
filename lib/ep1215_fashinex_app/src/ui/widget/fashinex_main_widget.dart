import 'package:flutter/material.dart';
import 'package:flutter_notebook_chapter_21/ep1215_fashinex_app/src/ui/fashinex_wish_list_page.dart';

class FashinexMainWidget extends StatefulWidget {
  const FashinexMainWidget({Key? key}) : super(key: key);

  @override
  State<FashinexMainWidget> createState() => _FashinexMainWidgetState();
}

class _FashinexMainWidgetState extends State<FashinexMainWidget> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              children: [
                CircleAvatar(),
                SizedBox(
                  width: 16,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Good Morning 👋"),
                    SizedBox(
                      height: 4,
                    ),
                    Text(
                      "Dreamwalker",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
                Spacer(),
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.notifications_none),
                ),
                IconButton(
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => FashinexWishListPage(),
                      ),
                    );
                  },
                  icon: Icon(Icons.favorite_border),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 16),
            height: 58,
            decoration: BoxDecoration(
              color: Colors.grey[100],
              borderRadius: BorderRadius.circular(8),
            ),
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: TextField(
              decoration: InputDecoration(
                suffixIcon: Icon(Icons.filter_list),
                icon: Icon(Icons.search),
                border: InputBorder.none,
                hintText: "Search",
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 8,
              horizontal: 16,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Special Offers",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: Text("See All"),
                  style: TextButton.styleFrom(
                    primary: Colors.black,
                  ),
                )
              ],
            ),
          ),
          Container(
            height: 150,
            margin: EdgeInsets.symmetric(
              horizontal: 16,
            ),
            decoration: BoxDecoration(
              color: Colors.grey,
              borderRadius: BorderRadius.circular(16),
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
            // height: 200,
            // color: Colors.pink,
            child: GridView.count(
              shrinkWrap: true,
              crossAxisCount: 4,
              children: List.generate(
                8,
                (index) => Column(
                  children: [
                    CircleAvatar(
                      radius: 28,
                    ),
                    Text("index$index")
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Most Popular",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: Text("See All"),
                  style: TextButton.styleFrom(
                    primary: Colors.black,
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 32,
            child: ListView.builder(
              itemCount: 8,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                if (index == 0) {
                  return Container(
                    margin: EdgeInsets.symmetric(horizontal: 6),
                    decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.black,
                        ),
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(24)),
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Center(
                      child: Text(
                        "All",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  );
                }
                return Container(
                  margin: EdgeInsets.symmetric(horizontal: 6),
                  decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.black,
                      ),
                      borderRadius: BorderRadius.circular(24)),
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Center(child: Text("Wedding")),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
