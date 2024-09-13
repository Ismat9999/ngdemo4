import 'package:flutter/material.dart';

class GridviewPage extends StatefulWidget {
  const GridviewPage({super.key});

  @override
  State<GridviewPage> createState() => _GridviewPageState();
}

class _GridviewPageState extends State<GridviewPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("Grid View"),

      ),
      body: GridView.count(
        crossAxisCount: 2,
        children: [
          _itemList(title:"Ismatilla", image:"assets/images/image_1.jpg"),
          _itemList(title:"Ismatilla", image:"assets/images/image_1.jpg"),
          _itemList(title:"Ismatilla", image:"assets/images/image_1.jpg"),
          _itemList(title:"Ismatilla", image:"assets/images/image_1.jpg"),
          _itemList(title:"Ismatilla", image:"assets/images/image_1.jpg"),
          _itemList(title:"Ismatilla", image:"assets/images/image_1.jpg"),
          _itemList(title:"Ismatilla", image:"assets/images/image_1.jpg"),
          _itemList(title:"Ismatilla", image:"assets/images/image_1.jpg"),
        ],
      ),
    );
  }
  Widget _itemList({title,image}){
    return Container(
      color: Colors.green,
      margin: EdgeInsets.all(5),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image(
            width: 100,
        height: 100,
          fit: BoxFit.cover,
        image: AssetImage(image),
      ),
      SizedBox(height: 10,),
          Text(title,style: TextStyle(fontSize: 20),)
        ],
      ),
    );
  }
}
