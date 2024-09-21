// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:e_commerce_app_ui/components/CartTile.dart';
import 'package:e_commerce_app_ui/models/Cart.dart';
import 'package:e_commerce_app_ui/models/Laptop.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(
      builder: (context, value, child) => Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
        
          children: [
            //heading
            Text('My Cart', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24, color: Colors.white)),

            const SizedBox(height: 10,),

            Expanded(
              child: ListView.builder(
                itemCount: value.GetUserCart().length,
                itemBuilder: (context, index){
                  //get each laptop
                  Laptop laptop = value.GetUserCart()[index];

                  //return cart tile
                  return CartTile(laptop: laptop,);
                }
              )
            )
          ],
        ),
      ) 
    );
  }
}