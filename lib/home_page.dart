import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int day = 30;
    String name = "flutter";
    return Scaffold(
        appBar: AppBar(
          title: Text("Catalog App"),
        ),
        body: Center(
          child: Container(
            child: Text("Welcome to $day days of $name"),
          ),
        ),
        drawer: Drawer(),
      );
  }
}