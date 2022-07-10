import 'package:flutter/material.dart';

class LooksieSellerHomePage extends StatefulWidget {
  const LooksieSellerHomePage({Key? key}) : super(key: key);

  @override
  State<LooksieSellerHomePage> createState() => _LooksieSellerHomePageState();
}

class _LooksieSellerHomePageState extends State<LooksieSellerHomePage> with TickerProviderStateMixin {
  int pageIndex = 0;
  late TabController _tabController;
  ScrollController scrollController = ScrollController();
  bool offsetZero = true;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = TabController(
      length: 3,
      vsync: this,
    );
    scrollController
      ..addListener(() {
        if (scrollController.offset <= 0.0) {
          offsetZero = true;
        } else {
          offsetZero = false;
        }
        setState(() {});
      });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: IndexedStack(
        index: pageIndex,
        children: [
          Container(),
          NestedScrollView(
            controller: scrollController,
            headerSliverBuilder: (context, isScrolled) {
              print(isScrolled);
              return [
                SliverAppBar(
                  flexibleSpace: FlexibleSpaceBar(
                    background: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 84,
                          width: 84,
                          decoration: BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.circular(4),
                            image: DecorationImage(
                                image: NetworkImage(
                                  "https://cdn.pixabay.com/photo/2022/07/04/06/25/butterfly-7300501__340.jpg",
                                ),
                                fit: BoxFit.cover),
                          ),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Text(
                          "Ceramic Lovers",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Text("@ceramic_lovers"),
                        SizedBox(
                          height: 8,
                        ),
                        Text(
                          '12 followers',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Container(
                          width: 240,
                          height: 32,
                          decoration: BoxDecoration(
                            color: Colors.grey[300],
                            borderRadius: BorderRadius.circular(4),
                          ),
                          child: Center(
                            child: Text("Edit profile"),
                          ),
                        )
                      ],
                    ),
                  ),
                  bottom: TabBar(
                    controller: _tabController,
                    labelColor: Colors.black,
                    indicatorColor: Color.fromRGBO(125, 114, 250, 1),
                    tabs: [
                      Tab(text: "Posts"),
                      Tab(
                        text: "Store",
                      ),
                      Tab(
                        text: "About",
                      )
                    ],
                  ),
                  expandedHeight: 320,
                  pinned: true,
                  // floating: true,
                  backgroundColor: Colors.white,
                  title: offsetZero ? Text("") : Text("Ceramic Lovers"),
                  foregroundColor: Colors.black,
                ),
              ];
            },
            body: TabBarView(
              controller: _tabController,
              children: [
                Padding(
                  padding: EdgeInsets.only(top: offsetZero ? 8 : 180),
                  child: ListView(
                    padding: EdgeInsets.zero,
                    children: [
                      Column(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.white,
                            ),
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(12.0),
                                  child: Row(
                                    children: [
                                      Container(
                                        height: 48,
                                        width: 48,
                                        decoration: BoxDecoration(
                                          color: Colors.blue,
                                          borderRadius: BorderRadius.circular(4),
                                          image: DecorationImage(
                                              image: NetworkImage(
                                                "https://cdn.pixabay.com/photo/2022/07/04/06/25/butterfly-7300501__340.jpg",
                                              ),
                                              fit: BoxFit.cover),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 8,
                                      ),
                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text("Ceramic Lovers"),
                                          SizedBox(
                                            height: 4,
                                          ),
                                          Text("Tue, Mar 23"),
                                        ],
                                      ),
                                      Spacer(),
                                      IconButton(
                                        onPressed: () {},
                                        icon: Icon(Icons.more_vert_outlined),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: 420,
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: Colors.red,
                                      image: DecorationImage(
                                          image: NetworkImage(
                                              "https://cdn.pixabay.com/photo/2022/06/08/15/20/artist-7250695_960_720.jpg"),
                                          fit: BoxFit.cover),
                                    ),
                                  ),
                                ),
                                Row(
                                  children: [
                                    IconButton(
                                      onPressed: () {},
                                      icon: Icon(Icons.favorite),
                                      color: Colors.red,
                                    ),
                                    Text("100 likes"),
                                    IconButton(
                                      onPressed: () {},
                                      icon: Icon(Icons.chat_bubble_outline_outlined),
                                    ),
                                    Text("10 comments"),
                                  ],
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                //Store Tab
                Column(
                  children: [
                    Container(
                      height: 42,
                      decoration: BoxDecoration(
                        color: Colors.grey[300]!,
                      ),
                    ),
                    Row(
                      children: [
                        Text("Plant Pots"),

                      ],
                    )

                  ],
                ),
                Container(
                  color: Colors.blue,
                ),
              ],
            ),
          ),
          Container(),
          Container(),
          Container(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        type: BottomNavigationBarType.fixed,
        currentIndex: pageIndex,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey,
        onTap: (idx) {
          setState(() {
            pageIndex = idx;
          });
        },
        items: [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home_filled,
              ),
              label: ""),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.person_outline,
              ),
              label: ""),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.add_box_outlined,
              ),
              label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.chat_bubble_outline_outlined,
              ),
              label: ""),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.settings_outlined,
              ),
              label: "")
        ],
      ),
      floatingActionButton: pageIndex == 1 && offsetZero
          ? FloatingActionButton(
        backgroundColor: Color.fromRGBO(125, 114, 250, 1),
        onPressed: () {},
        child: Icon(Icons.add),
      )
          : null,
    );
  }
}
