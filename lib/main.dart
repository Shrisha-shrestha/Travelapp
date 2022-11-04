import 'package:flutter/material.dart';
import 'package:travelapp/Mainscreen.dart';
import 'package:travelapp/search.dart';
import 'homescreen.dart';

void main() {
  runApp( MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
    primaryColor: Colors.white,
    ),
    home: Main(),
  ));
}

