import 'package:flutter/material.dart';
import 'package:ngdemo4/pages/circle_page.dart';
import 'package:ngdemo4/pages/container_page.dart';
import 'package:ngdemo4/pages/gridview_page.dart';
import 'package:ngdemo4/pages/home_pages.dart';
import 'package:ngdemo4/pages/message_page.dart';
import 'package:ngdemo4/pages/pagerview_page.dart';
import 'package:ngdemo4/pages/tabbarview_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home:CirclePage(),
    );
  }
}


