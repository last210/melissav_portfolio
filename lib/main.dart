import 'package:flutter/material.dart';
import 'package:melissav_portfolio/views/homepage.dart';

void main() {
  runApp(MelissavPorfolio());
}

class MelissavPorfolio extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Homepage(),
    );
  }
}
