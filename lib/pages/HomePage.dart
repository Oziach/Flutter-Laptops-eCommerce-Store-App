// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:e_commerce_app_ui/components/bottomNavBar.dart';
import 'package:e_commerce_app_ui/pages/CartPage.dart';
import 'package:e_commerce_app_ui/pages/ShopPage.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  int selectedPageIndex = 0;

  NavigateBottomBar(int index){
    setState(() {
      selectedPageIndex = index;
    });
  }

  final List<Widget> pages = [
    //shop page
    const ShopPage(),

    //cart page
    const CartPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return   Scaffold(
      backgroundColor: Colors.grey[850],
      drawerScrimColor: Colors.black.withOpacity(0.2),
      
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: Builder(
          builder: (context) {
            return IconButton(
              onPressed: Scaffold.of(context).openDrawer,
              icon: Icon(
                Icons.menu,
                color: Colors.white,
                size: 32,
              ),
            );
          }
        )
      ),

      drawer: Drawer(
        backgroundColor: Colors.grey[800],
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            //logo
            Column(
              children: [
                DrawerHeader(child: Image.asset('lib/images/acerLogo.png', color: Colors.white, width: 200,)),
                
                //other pages
                
                //home
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: ListTile(
                    leading:  Icon(Icons.home, color: Colors.white,),
                    title: Text("    Home", style: TextStyle(color: Colors.white, fontSize: 20),),
                  ),
                ),
                
                //about
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: ListTile(
                    leading:  Icon(Icons.info, color: Colors.white,),
                    title: Text("    About", style: TextStyle(color: Colors.white, fontSize: 20),),
                  ),
                ),
              ],
            ),

            //logout
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: ListTile(
                leading:  Icon(Icons.logout, color: Colors.white,),
                title: Text("    Logout", style: TextStyle(color: Colors.white, fontSize: 20),),
              ),
            )

          ],
        ),
      ),

      bottomNavigationBar: CustomBottomNavBar(
        onTabChange: NavigateBottomBar,
      ),

      body: pages[selectedPageIndex],
    );
  }
}