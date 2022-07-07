import 'package:flutter/material.dart';

class HcHomeWidget extends StatelessWidget {
  const HcHomeWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Net Collections"),
                Text(
                  "\$35,543",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                  ),
                )
              ],
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 16),
              height: 240,
              color: Colors.blue,
            ),
            Container(
              height: 36,
              width: 260,
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(24),
              ),
              child: Row(
                children: [
                  TextButton(
                      onPressed: () {},
                      child: Text("1m"),
                      style: TextButton.styleFrom(
                        primary: Colors.grey,
                      )),
                  TextButton(
                      onPressed: () {},
                      child: Text("1y"),
                      style: TextButton.styleFrom(
                        primary: Colors.grey,
                      )),
                  TextButton(onPressed: () {}, child: Text("MTD")),
                  TextButton(
                    onPressed: () {},
                    child: Text("All"),
                    style: TextButton.styleFrom(
                      primary: Colors.grey,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 16,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Action Items"),
                TextButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(
                    textStyle: TextStyle(
                      fontSize: 12,
                    ),
                  ),
                  child: Text(
                    "View all",
                  ),
                ),
              ],
            ),
            ...[
              Row(
                children: [
                  CircleAvatar(),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Review rejected claim"),
                            Text("8:31 PM"),
                          ],
                        ),
                        Text("Claim #10023")
                      ],
                    ),
                  )
                ],
              )
            ]
          ],
        ),
      ),
    );
  }
}
