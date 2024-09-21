// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class CustomBottomNavBar extends StatelessWidget {

  void Function(int)? onTabChange;

  CustomBottomNavBar({
    super.key,
    required this.onTabChange,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: GNav(
        color: Colors.grey[500],
        activeColor: Colors.grey[100],
        tabActiveBorder: Border.all(color: Colors.white),
        tabMargin: EdgeInsets.all(10),
        mainAxisAlignment: MainAxisAlignment.center,
        iconSize: 40,
        textSize: 40,
        onTabChange: (value) => onTabChange!(value),
        tabs: [
        GButton(
          padding: EdgeInsets.all(15),
          icon: Icons.home,
          text: "Shop",  
        ),

        GButton(
          padding: EdgeInsets.all(15),
          icon: Icons.shopping_cart,
          text: "Cart",
        ),
      ]
      )
    );
  }
}