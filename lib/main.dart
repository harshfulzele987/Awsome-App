import 'package:awsome_app/bg_imagr.dart';
import 'package:awsome_app/drawer.dart';
import 'package:awsome_app/pages/home_page.dart';
import 'package:flutter/material.dart';
import 'card.dart';


void main() {
  runApp(MaterialApp(
      title: "Awsome app",
      home: HomePage(),
      theme: ThemeData(
        primarySwatch: Colors.pink,
      )
      )
      );
}

