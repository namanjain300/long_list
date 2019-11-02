import 'package:flutter/material.dart';
import 'app_screens/long_list.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: "Flutter Trial",
    home: Scaffold(
      body: LongList(),
    ),
  ));
}
