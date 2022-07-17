import 'package:flutter/material.dart';

class FashinexMenu {
  IconData? iconData;
  String? menuTitle;

  FashinexMenu({this.iconData, this.menuTitle});
}

///
///  BottomNavigationBarItem(
//               icon: Icon(Icons.home_filled),
//               label: "Home",
//               tooltip: "Home",
//             ),
//             BottomNavigationBarItem(
//               icon: Icon(Icons.shopping_bag_outlined),
//               label: "Cart",
//               tooltip: "Cart",
//             ),
//             BottomNavigationBarItem(
//               icon: Icon(Icons.shopping_cart_outlined),
//               label: "Orders",
//               tooltip: "Orders",
//             ),
//             BottomNavigationBarItem(
//               icon: Icon(Icons.wallet),
//               label: "Wallet",
//               tooltip: "Wallet",
//             ),
//             BottomNavigationBarItem(
//               icon: Icon(Icons.person_outline),
//               label: "Profile",
//               tooltip: "Profile",
//             )
List<FashinexMenu> fashinexMenuItems = [
  FashinexMenu(
    iconData: Icons.home_filled,
    menuTitle: "Home",
  ),
  FashinexMenu(
    iconData: Icons.shopping_bag_outlined,
    menuTitle: "Cart",
  ),
  FashinexMenu(
    iconData: Icons.shopping_cart_outlined,
    menuTitle: "Orders",
  ),
  FashinexMenu(
    iconData: Icons.wallet,
    menuTitle: "Wallet",
  ),
  FashinexMenu(
    iconData: Icons.person_outline,
    menuTitle: "Profile",
  )
];
