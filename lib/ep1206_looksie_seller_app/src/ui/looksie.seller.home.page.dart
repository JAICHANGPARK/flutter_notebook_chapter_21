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
  bool offsetZero = false;

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
        // print(scrollController.position);

        print(scrollController.offset);
        if (scrollController.offset <= 0.0) {
          setState(() {
            offsetZero = true;
          });
        } else {
          setState(() {
            offsetZero = false;
          });
        }
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
                        children: [
                          Container(
                            height: 84,
                            width: 84,
                            decoration: BoxDecoration(
                              color: Colors.red,
                            ),
                          ),
                          Text("Ceramic Lovers"),
                          Text("@ceramic_lovers"),
                          Text('12 followers'),
                          Container(
                            width: 240,
                            height: 32,
                            decoration: BoxDecoration(
                              color: Colors.grey,
                              borderRadius: BorderRadius.circular(4)
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
                  Container(
                    color: Colors.red,
                  ),
                  Container(
                    color: Colors.green,
                  ),
                  Container(
                    color: Colors.blue,
                  ),
                ],
              )),
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
      floatingActionButton: pageIndex == 1
          ? FloatingActionButton(
              backgroundColor: Color.fromRGBO(125, 114, 250, 1),
              onPressed: () {},
              child: Icon(Icons.add),
            )
          : null,
    );
  }
}
