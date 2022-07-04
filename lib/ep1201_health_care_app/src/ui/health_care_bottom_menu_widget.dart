import 'package:flutter/material.dart';
import 'package:flutter_notebook_chapter_21/ep1201_health_care_app/src/health_care_style.dart';

class HCAMenu {
  String? title;
  Widget? iconWidget;
  int? index;

  HCAMenu({this.title, this.iconWidget, this.index});
}

List<HCAMenu> bottomMenuItems = [
  HCAMenu(title: "Home", index: 0, iconWidget: Icon(Icons.home_outlined)),
  HCAMenu(title: "Billing", index: 1, iconWidget: Icon(Icons.card_giftcard)),
  HCAMenu(title: "Paitents", index: 2, iconWidget: Icon(Icons.person_outlined)),
  HCAMenu(title: "Cretendial", index: 3, iconWidget: Icon(Icons.list_alt)),
  HCAMenu(title: "Documents", index: 4, iconWidget: Icon(Icons.document_scanner_outlined)),
];

class HealthCareBottomMenuWidget extends StatefulWidget {
  const HealthCareBottomMenuWidget({Key? key}) : super(key: key);

  @override
  State<HealthCareBottomMenuWidget> createState() => _HealthCareBottomMenuWidgetState();
}

class _HealthCareBottomMenuWidgetState extends State<HealthCareBottomMenuWidget> {
  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      child: Container(
        height: 72,
        padding: EdgeInsets.symmetric(horizontal: 4),
        child: Row(
          children: [
            Expanded(
              child: Column(
                children: [
                  Container(
                    height: 3,
                    color: healthCarePrimaryColor,
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.bar_chart),
                    iconSize: 32,
                    color: healthCarePrimaryColor,
                  ),
                  Text(
                    "Home",
                    style: TextStyle(
                      color: healthCarePrimaryColor,
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Column(
                children: [
                  Container(
                    height: 3,
                    color: Colors.transparent,
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.bar_chart),
                    iconSize: 32,
                    color: healthCarePrimaryColor,
                  ),
                  Text(
                    "Billing",
                    style: TextStyle(
                      color: healthCarePrimaryColor,
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Column(
                children: [
                  Container(
                    height: 3,
                    color: Colors.transparent,
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.bar_chart),
                    iconSize: 32,
                    color: healthCarePrimaryColor,
                  ),
                  Text(
                    "Paitents",
                    style: TextStyle(
                      color: healthCarePrimaryColor,
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Column(
                children: [
                  Container(
                    height: 3,
                    color: Colors.transparent,
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.bar_chart),
                    iconSize: 32,
                    color: healthCarePrimaryColor,
                  ),
                  Text(
                    "Credentialing",
                    style: TextStyle(
                      color: healthCarePrimaryColor,
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Column(
                children: [
                  Container(
                    height: 3,
                    color: Colors.transparent,
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.bar_chart),
                    iconSize: 32,
                    color: healthCarePrimaryColor,
                  ),
                  Text(
                    "Documents",
                    style: TextStyle(
                      color: healthCarePrimaryColor,
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
