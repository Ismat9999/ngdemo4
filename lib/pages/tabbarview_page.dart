import 'package:flutter/material.dart';

class TabbarViewPage extends StatefulWidget {
  const TabbarViewPage({super.key});

  @override
  State<TabbarViewPage> createState() => _TabbarViewPageState();
}

class _TabbarViewPageState extends State<TabbarViewPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child:  Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.blue,
            title: Text("TabbarView Page"),
            bottom: TabBar(
                tabs:[
             Tab(icon: Icon(Icons.home),),
             Tab(),
             Tab(),     
                ],
            ),
          ),
        ),
        );

  }
}
