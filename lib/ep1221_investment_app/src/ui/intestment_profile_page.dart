import 'package:flutter/material.dart';

class InvestmentProfilePage extends StatefulWidget {
  const InvestmentProfilePage({Key? key}) : super(key: key);

  @override
  State<InvestmentProfilePage> createState() => _InvestmentProfilePageState();
}

class _InvestmentProfilePageState extends State<InvestmentProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 16, top: 16),
              child: Row(
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.arrow_back,
                    ),
                    color: Colors.white,
                  ),
                  Spacer(),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(4),
                    ),
                    padding: EdgeInsets.all(4),
                    child: IconButton(
                      iconSize: 20,
                      padding: EdgeInsets.zero,
                      constraints: BoxConstraints(
                        maxHeight: 24,
                        maxWidth: 24,
                      ),
                      splashRadius: 16,
                      onPressed: () {},
                      icon: Icon(Icons.add),
                      color: Colors.white,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 8),
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(4),
                    ),
                    padding: EdgeInsets.all(4),
                    child: IconButton(
                      iconSize: 20,
                      padding: EdgeInsets.zero,
                      constraints: BoxConstraints(
                        maxHeight: 24,
                        maxWidth: 24,
                      ),
                      splashRadius: 16,
                      onPressed: () {},
                      icon: Icon(Icons.chat_bubble),
                      color: Colors.white,
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(4),
                    ),
                    padding: EdgeInsets.all(4),
                    child: IconButton(
                      iconSize: 20,
                      padding: EdgeInsets.zero,
                      constraints: BoxConstraints(
                        maxHeight: 24,
                        maxWidth: 24,
                      ),
                      splashRadius: 16,
                      onPressed: () {},
                      icon: Icon(Icons.more_horiz),
                      color: Colors.white,
                    ),
                  )
                ],
              ),
            ),
            Expanded(
                child: Column(
              children: [
                Container(
                  height: 120,
                  width: 120,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.blue,
                    ),
                    shape: BoxShape.circle,
                  ),
                )
              ],
            )),
            Expanded(child: Placeholder()),
          ],
        ),
      ),
    );
  }
}
