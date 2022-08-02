import 'package:flutter/material.dart';

class ClassesMainPage extends StatefulWidget {
  const ClassesMainPage({Key? key}) : super(key: key);

  @override
  State<ClassesMainPage> createState() => _ClassesMainPageState();
}

class _ClassesMainPageState extends State<ClassesMainPage> with SingleTickerProviderStateMixin {
  TabController? _tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = TabController(length: 5, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Color.fromRGBO(220, 85, 90, 1),
      // backgroundColor: Colors.black,
      body: SafeArea(
          child: Column(
        children: [
          SizedBox(
            height: 42,
          ),
          Divider(
            color: Colors.black,
            height: 0,
          ),
          Container(
            decoration: BoxDecoration(color: Colors.black),
            height: 58,
            child: Row(
              children: [
                Container(
                  width: 72,
                  margin: EdgeInsets.only(top: 2, right: 2, bottom: 2),
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(220, 85, 90, 1),
                  ),
                  child: Center(
                    child: IconButton(
                      icon: Icon(Icons.search),
                      onPressed: () {},
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    margin: EdgeInsets.only(top: 2, bottom: 2),
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(220, 85, 90, 1),
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                    child: TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Search",
                      ),
                    ),
                  ),
                ),
                Container(
                  width: 72,
                  margin: EdgeInsets.only(top: 2, left: 2, bottom: 2),
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(220, 85, 90, 1),
                  ),
                  child: Center(
                    child: IconButton(
                      icon: Icon(Icons.menu),
                      onPressed: () {},
                    ),
                  ),
                )
              ],
            ),
          ),
          Container(
            height: 54,
            decoration: BoxDecoration(color: Colors.black),
            child: Container(
              margin: EdgeInsets.only(top: 0, bottom: 2),
              decoration: BoxDecoration(
                color: Color.fromRGBO(220, 85, 90, 1),
              ),
              child: TabBar(
                controller: _tabController,
                indicatorColor: Colors.transparent,
                labelColor: Colors.black,
                isScrollable: true,
                labelStyle: TextStyle(
                  fontWeight: FontWeight.w800,
                  fontSize: 16,
                ),
                unselectedLabelStyle: TextStyle(fontWeight: FontWeight.w600),
                tabs: [
                  Tab(
                    text: "All",
                  ),
                  Tab(
                    text: "Music",
                  ),
                  Tab(
                    text: "Writing",
                  ),
                  Tab(
                    text: "Design & Style",
                  ),
                  Tab(
                    text: "Business",
                  )
                ],
              ),
            ),
          ),
          Expanded(
              child: TabBarView(
            controller: _tabController,
            children: [
              Container(
                color: Colors.black,
                child: Row(
                  children: [
                    Container(
                      width: 72,
                      margin: EdgeInsets.only(top: 0, right: 2, bottom: 0),
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(220, 85, 90, 1),
                      ),
                      padding: EdgeInsets.only(left: 16, right: 16, bottom: 16),
                      child: Center(
                        child: RotatedBox(
                          quarterTurns: 3,
                          child: Align(
                            alignment: Alignment.bottomLeft,
                            child: Text(
                              "WELCOME TO MASTERCLASS",
                            ),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        width: 72,
                        margin: EdgeInsets.only(top: 0, bottom: 0),
                        decoration: BoxDecoration(
                          color: Color.fromRGBO(220, 85, 90, 1),
                        ),
                        child: ListView(
                          children: [],
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                color: Colors.red,
              ),
              Container(
                color: Colors.orangeAccent,
              ),
              Container(
                color: Colors.yellow,
              ),
              Container(
                color: Colors.green,
              )
            ],
          )),
          Divider(
            color: Colors.black,
            thickness: 1,
            height: 0,
          ),
          Container(
            color: Colors.black,
            height: 48,
            child: Row(
              children: [
                Container(
                  width: 72,
                  margin: EdgeInsets.only(top: 2, right: 2, bottom: 2),
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(220, 85, 90, 1),
                  ),
                ),
                Expanded(
                  child: Container(
                    width: 72,
                    margin: EdgeInsets.only(top: 2, bottom: 2),
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(220, 85, 90, 1),
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      )),
    );
  }
}
