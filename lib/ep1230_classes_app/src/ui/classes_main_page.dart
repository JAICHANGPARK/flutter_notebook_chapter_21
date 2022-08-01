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
    _tabController = TabController(length: 6, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                ),
                Expanded(
                    child: Container(
                  margin: EdgeInsets.only(top: 2, bottom: 2),
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(220, 85, 90, 1),
                  ),
                )),
                Container(
                  width: 72,
                  margin: EdgeInsets.only(top: 2, left: 2, bottom: 2),
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(220, 85, 90, 1),
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
            children: [],
          )),
          Divider(
            color: Colors.black,
            height: 0,
          ),
          SizedBox(
            height: 32,
            child: Row(
              children: [],
            ),
          )
        ],
      )),
    );
  }
}
