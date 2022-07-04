import 'package:flutter/material.dart';

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
