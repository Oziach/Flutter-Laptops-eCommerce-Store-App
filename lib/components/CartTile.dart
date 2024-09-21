import 'package:e_commerce_app_ui/models/Cart.dart';
import 'package:e_commerce_app_ui/models/Laptop.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CartTile extends StatefulWidget {
  Laptop laptop;

   CartTile({super.key, required this.laptop});

  @override
  State<CartTile> createState() => _CartTileState();
}

class _CartTileState extends State<CartTile> {

  //remove laptop from carttttttttttttttt 
  void Remove(){
    Provider.of<Cart>(context, listen: false).RemoveItemFromCart(widget.laptop);
  }

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Image.asset(widget.laptop.imagePath),
      title: Text(widget.laptop.name, style: TextStyle(color: Colors.white),),
      subtitle: Text(widget.laptop.price, style: TextStyle(color: Colors.grey[300]),),
      trailing: IconButton(onPressed: Remove, icon: Icon(Icons.delete)),
    );
  }
}