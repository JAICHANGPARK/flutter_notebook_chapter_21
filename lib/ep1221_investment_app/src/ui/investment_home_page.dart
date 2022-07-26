import 'package:flutter/material.dart';

class InvestmentHomePage extends StatefulWidget {
  const InvestmentHomePage({Key? key}) : super(key: key);

  @override
  State<InvestmentHomePage> createState() => _InvestmentHomePageState();
}

class _InvestmentHomePageState extends State<InvestmentHomePage> {
  int _index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: IndexedStack(
        children: [
          Stack(
            children: [
              Positioned(
                left: 0,
                top: 0,
                right: 0,
                bottom: 0,
                child: Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        Colors.black,
                        Colors.black,
                        Colors.black.withOpacity(0.5),
                        Colors.black.withOpacity(0.5),
                        Color.fromRGBO(35, 183, 95, 0.7),
                      ],
                      begin: Alignment.bottomLeft,
                      end: Alignment.topRight,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 16,
                top: 100,
                bottom: 0,
                right: 0,
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Hello, Dream",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      Text(
                        "Portfolio value",
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 12,
                        ),
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            "\$15,457.91",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 42,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Align(
                            alignment: Alignment.bottomCenter,
                            child: Row(
                              children: [
                                Icon(
                                  Icons.arrow_drop_up_rounded,
                                  size: 30,
                                  color: Color.fromRGBO(35, 183, 95, 1),
                                ),
                                Text(
                                  "3.61%",
                                  style: TextStyle(
                                    color: Color.fromRGBO(35, 183, 95, 1),
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            "Last month",
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 12,
                            ),
                          ),
                          Icon(
                            Icons.arrow_drop_up_rounded,
                            color: Color.fromRGBO(35, 183, 95, 1),
                          ),
                          Text(
                            "5.65%",
                            style: TextStyle(
                              color: Color.fromRGBO(35, 183, 95, 1),
                            ),
                          )
                        ],
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(vertical: 16),
                        height: 240,
                        color: Colors.green,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 16, bottom: 16, top: 0),
                        child: SizedBox(
                          height: 32,
                          child: ListView(
                            scrollDirection: Axis.horizontal,
                            children: [
                              "1D",
                              "1W",
                              "1M",
                              "3M",
                              "1Y",
                              "3Y",
                              "YTD",
                              "All",
                            ]
                                .map(
                                  (e) => Container(
                                    margin: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                                    decoration: BoxDecoration(
                                        color: e == "1M" ? Colors.white : Colors.black,
                                        borderRadius: BorderRadius.circular(2)),
                                    padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                                    child: Center(
                                      child: Text(
                                        "$e",
                                        style: TextStyle(
                                          color: e == "1M" ? Colors.black : Colors.white,
                                        ),
                                      ),
                                    ),
                                  ),
                                )
                                .toList(),
                          ),
                        ),
                      ),
                      Text(
                        "Pending Orders",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 24,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(vertical: 12),
                        height: 120,
                        decoration: BoxDecoration(
                          color: Colors.blue,
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
          Center(
            child: Text("Page $_index"),
          ),
          Center(
            child: Text("Page $_index"),
          ),
          Center(
            child: Text("Page $_index"),
          ),
          Center(
            child: Text("Page $_index"),
          ),
        ],
        index: _index,
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _index,
        onTap: (idx) {
          setState(() {
            _index = idx;
          });
        },
        backgroundColor: Colors.black,
        showUnselectedLabels: false,
        showSelectedLabels: false,
        selectedItemColor: Color.fromRGBO(35, 183, 95, 1),
        unselectedItemColor: Colors.grey,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
              ),
              label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.search,
              ),
              label: "Search"),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.group,
              ),
              label: "Person"),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.notifications,
              ),
              label: "Notification"),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.person,
              ),
              label: "Person")
        ],
      ),
    );
  }
}
