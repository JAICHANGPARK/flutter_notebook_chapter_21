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
            )
          ],
        ),
      ),
    );
  }
}
