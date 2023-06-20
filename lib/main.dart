import 'dart:math';

import 'package:flutter/material.dart';
import 'package:colorful_safe_area/colorful_safe_area.dart';

void main() {
  runApp(const DiceApp());
}
class DiceApp extends StatelessWidget {
  const DiceApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}
class HomeScreen extends StatefulWidget {
  HomeScreen({super.key});
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int num = 1;
  void getRandomNumber(){
    num = Random().nextInt(6)+1 ;
  }
  @override
  Widget build(BuildContext context) {
    return ColorfulSafeArea(
        color: Colors.black,
        child: Scaffold(
          backgroundColor: Colors.black,
          appBar: AppBar(
            backgroundColor: Colors.black,
            title: Center(child: Text("Dice App")),
          ),
          body: Center(
            child: GestureDetector(
              onTap: (){
                setState(() {
                  getRandomNumber();
                });
              }
              ,
              child: Image(
                image: AssetImage('images/dice${num}.png',),
                height: 250,
                width: 250,
              ),
            ),
          ),

        ));


  }
}






