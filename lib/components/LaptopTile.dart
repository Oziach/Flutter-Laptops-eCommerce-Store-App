// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:e_commerce_app_ui/models/Cart.dart';
import 'package:e_commerce_app_ui/models/Laptop.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class LaptopTile extends StatelessWidget {
  
  Laptop laptop;
  final void Function(Laptop laptop) onTap;
  LaptopTile({super.key, required this.laptop, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 50, bottom: 40, top: 15),
      width: 300,
      decoration: BoxDecoration(
        color: Colors.grey[800],
        borderRadius: BorderRadius.circular(15),
      ),
      
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            
            //laptop pic
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(laptop.imagePath)
            ),

            SizedBox(height: 20,),

            //desc
            Text(
              laptop.description,
              style: TextStyle(color: Colors.grey[200]),
            ),
        
            //price
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                  //name
                  Text(laptop.name, style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold ),),

                  //price
                  Text(laptop.price, style: TextStyle(color: Colors.white),),
                  ],

                ),

                //plus butt
                GestureDetector(
                  onTap: ()=>onTap(laptop),
                  child: Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Colors.grey[600],
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Icon(Icons.add, color: Colors.white,)
                  ),
                )
              ],


            )
        
          ],
        ),
      ),
    );
  }
}