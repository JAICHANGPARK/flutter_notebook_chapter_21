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
                      Text(
                        "LINK",
                        style: TextStyle(
                          fontSize: 12,
                          color: Colors.grey,
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
              child: Placeholder(),
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
