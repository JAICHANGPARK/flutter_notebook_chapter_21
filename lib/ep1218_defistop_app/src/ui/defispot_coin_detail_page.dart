import 'package:flutter/material.dart';

class DefispotCoinDetailpage extends StatefulWidget {
  const DefispotCoinDetailpage({Key? key}) : super(key: key);

  @override
  State<DefispotCoinDetailpage> createState() => _DefispotCoinDetailpageState();
}

class _DefispotCoinDetailpageState extends State<DefispotCoinDetailpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              height: 64,
              padding: EdgeInsets.only(right: 16),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.arrow_back_ios),
                    color: Colors.grey,
                  ),
                  CircleAvatar(
                    radius: 22,
                  ),
                  SizedBox(
                    width: 16,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Chainlink",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                      SizedBox(
                        height: 4,
                      ),
                      Text(
                        "LINK",
                        style: TextStyle(
                          fontSize: 12,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                  Spacer(),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        "\$1,198.12",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: 4,
                      ),
                      Text(
                        "12.54%",
                        style: TextStyle(
                          color: Colors.teal,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            Divider(
              color: Colors.grey,
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                      height: 42,
                      decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: BorderRadius.circular(32),
                      ),
                      padding: EdgeInsets.symmetric(
                        horizontal: 4,
                        vertical: 4,
                      ),
                      child: Row(
                        children: [
                          Expanded(
                            child: Container(
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(32),
                              ),
                              child: Center(
                                child: Text(
                                  "Candles",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: Center(
                              child: Text(
                                "Line",
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 320,
                      decoration: BoxDecoration(
                        color: Colors.blue,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: SizedBox(
                        height: 28,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: [
                            OutlinedButton(
                              onPressed: () {},
                              child: Text("1M"),
                              style: OutlinedButton.styleFrom(
                                backgroundColor: Colors.grey[200],
                                shape: StadiumBorder(),
                                primary: Colors.black,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 4),
                              child: OutlinedButton(
                                onPressed: () {},
                                child: Text("5M"),
                                style: OutlinedButton.styleFrom(
                                  shape: StadiumBorder(),
                                  primary: Colors.black,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 4),
                              child: OutlinedButton(
                                onPressed: () {},
                                child: Text("15M"),
                                style: OutlinedButton.styleFrom(
                                  shape: StadiumBorder(),
                                  primary: Colors.black,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 4),
                              child: OutlinedButton(
                                onPressed: () {},
                                child: Text("30M"),
                                style: OutlinedButton.styleFrom(
                                  shape: StadiumBorder(),
                                  primary: Colors.black,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 4),
                              child: OutlinedButton(
                                onPressed: () {},
                                child: Text("1H"),
                                style: OutlinedButton.styleFrom(
                                  shape: StadiumBorder(),
                                  primary: Colors.black,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 4),
                              child: OutlinedButton(
                                onPressed: () {},
                                child: Text("4H"),
                                style: OutlinedButton.styleFrom(
                                  shape: StadiumBorder(),
                                  primary: Colors.black,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    Divider(
                      color: Colors.grey,
                      height: 8,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Text(
                        "Statistics",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                    ),
                    Divider(
                      color: Colors.grey,
                      height: 0,
                    ),
                    IntrinsicHeight(
                      child: Row(
                        children: [
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Text("Market Cap"),
                                      IconButton(
                                        onPressed: () {},
                                        icon: Icon(Icons.info_outline),
                                        splashRadius: 16,
                                        iconSize: 16,
                                      )
                                    ],
                                  ),
                                  Text(
                                    "\$4.5B",
                                  )
                                ],
                              ),
                            ),
                          ),
                          VerticalDivider(
                            color: Colors.grey,
                          ),
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Text("Market Cap"),
                                      IconButton(
                                        onPressed: () {},
                                        icon: Icon(Icons.info_outline),
                                        splashRadius: 16,
                                        iconSize: 16,
                                      )
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        "\$4.5B",
                                      ),
                                      Spacer(),
                                      Icon(
                                        Icons.arrow_upward,
                                        size: 16,
                                      ),
                                      Text(
                                        "6.8%",
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Divider(
                      color: Colors.grey,
                      height: 0,
                    ),
                    IntrinsicHeight(
                      child: Row(
                        children: [
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Text("Market Cap"),
                                      IconButton(
                                        onPressed: () {},
                                        icon: Icon(Icons.info_outline),
                                        splashRadius: 16,
                                        iconSize: 16,
                                      )
                                    ],
                                  ),
                                  Text(
                                    "\$4.5B",
                                  )
                                ],
                              ),
                            ),
                          ),
                          VerticalDivider(
                            color: Colors.grey,
                          ),
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Text("Market Cap"),
                                      IconButton(
                                        onPressed: () {},
                                        icon: Icon(Icons.info_outline),
                                        splashRadius: 16,
                                        iconSize: 16,
                                      )
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        "\$4.5B",
                                      ),
                                      Spacer(),
                                      Icon(
                                        Icons.arrow_upward,
                                        size: 16,
                                      ),
                                      Text(
                                        "6.8%",
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Divider(
                      color: Colors.grey,
                      height: 0,
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(16, 8, 16, 0),
                      child: Row(
                        children: [
                          Text("Circulating Supply"),
                          IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.info_outline),
                            splashRadius: 16,
                            iconSize: 16,
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(16, 0, 16, 8),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("24.8B LINK"),
                          Text("75% of total supply"),
                        ],
                      ),
                    ),
                    Divider(
                      color: Colors.grey,
                      height: 0,
                    ),

                  ],
                ),
              ),
            ),
            Divider(
              color: Colors.grey,
            ),
            Container(
              height: 64,
              padding: EdgeInsets.symmetric(horizontal: 16),
              margin: EdgeInsets.only(
                bottom: 16,
              ),
              child: Row(
                children: [
                  OutlinedButton.icon(
                    onPressed: () {},
                    icon: Icon(Icons.add),
                    label: Text("Add Liqudity"),
                    style: OutlinedButton.styleFrom(
                      primary: Colors.black,
                      shape: StadiumBorder(),
                    ),
                  ),
                  SizedBox(
                    width: 12,
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    child: Text("Trade"),
                    style: ElevatedButton.styleFrom(
                      shape: StadiumBorder(),
                      backgroundColor: Colors.black,
                    ),
                  ),
                  Spacer(),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.star_border,
                    ),
                    color: Colors.grey,
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.share_outlined,
                    ),
                    color: Colors.grey,
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
