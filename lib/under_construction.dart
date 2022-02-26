import 'package:flutter/material.dart';

class UnderConstruction extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Color(0xFF3c4384),
          automaticallyImplyLeading: false,
          centerTitle: true,
          title: Text("Melissa Quintanilla"),
        ),
        body: Center(
          child: Image.asset("assets/under_construction.gif"),
        ));
  }
}
