// ignore_for_file: prefer_const_constructors

import 'package:e_commerce_app_ui/models/Cart.dart';
import 'package:e_commerce_app_ui/pages/IntroPage.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => Cart(),
      builder: (context, child) => const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: IntroPage(),
      )
    );
  }
}
