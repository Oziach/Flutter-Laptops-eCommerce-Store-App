// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:e_commerce_app_ui/components/LaptopTile.dart';
import 'package:e_commerce_app_ui/models/Cart.dart';
import 'package:e_commerce_app_ui/models/Laptop.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:provider/provider.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {

  
  void AddLaptopToCart(Laptop laptop){
    Provider.of<Cart>(context, listen:  false).AddItemToCart(laptop);

    //alert the user
    showDialog(
      context: context,
      builder : (context) => AlertDialog(
        title: Text('Successfully added!'),
        content: Text("Check your cart"),
      ) 
    );
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(
      builder: (context, value, child)=>Column(
      children: [
        //search bar
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
        
          child: Container(
            decoration: BoxDecoration(color: Colors.grey[800], borderRadius: BorderRadius.circular(8)),
            child: Padding(
              padding: const EdgeInsets.all(18.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                  
                children: [
                  Text("Search", style: TextStyle(color: Colors.grey[300], fontSize: 20)),
                  Icon(Icons.search, color: Colors.grey[300],),

                ],
              ),
            )
          ),
        ),

        Padding(
          padding: const EdgeInsets.all(20.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Trending', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white, fontSize: 28),),
              Text('See All', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.pink, fontSize: 18),),
          ],),
        ),

        SizedBox(height: 10,),

        //items

         Expanded(
          child: ListView.builder(
            itemCount: 3,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
  
              Laptop laptop = value.GetLaptopsList()[index];
              
              return LaptopTile(laptop: laptop, onTap: AddLaptopToCart,);

            },
          ),
        )
      ],
    ),
    );
  }
}