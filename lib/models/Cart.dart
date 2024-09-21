import 'package:e_commerce_app_ui/models/Laptop.dart';
import 'package:flutter/material.dart';

class Cart extends ChangeNotifier{

  //list of laptops
  //yes they're deliberately mismatched coz y not
  List<Laptop> laptopShop = [
    Laptop(name: "Acer Nitro", imagePath: "lib/images/acerNitroPNG.png", price: "55,000", description: "Nice laptop"),
    Laptop(name: "Acer Swift", imagePath: "lib/images/acerHeliosPNG.png", price: "75,000", description: "Very dashing"),
    Laptop(name: "Acer Predator", imagePath: "lib/images/acerSwiftPNG.png", price: "95,000", description: "Not that kind of predator"),

  ];

  //list of items in user cart
  List<Laptop> userCart = [];

  //get list of laptops for sale
  List<Laptop> GetLaptopsList(){
    return laptopShop;
  }

  //get user cart
  List<Laptop> GetUserCart(){
    return userCart;
  }

  //add items to cart
  void AddItemToCart(Laptop laptop){
    userCart.add(laptop);
    notifyListeners();
  }

  //remove items from cart
   void RemoveItemFromCart(Laptop laptop){
    userCart.remove(laptop);
    print("REMOVED THE DAMN ITEM: " + laptop.name);
    notifyListeners();
  }
}