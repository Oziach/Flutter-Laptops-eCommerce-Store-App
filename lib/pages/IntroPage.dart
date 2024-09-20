// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
        
              //logo
              Padding(
                padding: const EdgeInsets.all(30),
                child: Image.asset(
                  'lib/images/acerLogo.png',
                  height: 150,  
                ),
              ),
          
              //text
              Text(
                'The best laptops',
                style: TextStyle(
                  color: Colors.grey[500],
                  fontSize: 18,
                ),
              ),
          
              const SizedBox(height:30),
          
              //button
              GestureDetector(
                // onTap: ()=>Navigator.push(
                //   context,
                //   MaterialPageRoute(
                //     builder: (context)=>HomePage(),
                //   ),
                // ),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.grey[900],
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: const Text(
                        'Shop Now',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              
              const SizedBox(height: 120),

            ],


          ),
        ),
      ),
    );
  }
}