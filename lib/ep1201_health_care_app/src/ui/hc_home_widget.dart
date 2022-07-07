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
                borderRadius: BorderRadius.circular(24)
              ),
              child: Row(
                children: [
                  TextButton(onPressed: (){}, child: Text("1m")),
                  TextButton(onPressed: (){}, child: Text("1y")),
                  TextButton(onPressed: (){}, child: Text("MTD")),
                  TextButton(onPressed: (){}, child: Text("All")),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Action Items"),
                TextButton(onPressed: (){}, child: Text("View all")),
              ],
            )
          ],
        ),
      ),
    );
  }
}
