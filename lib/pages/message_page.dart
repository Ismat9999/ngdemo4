import 'package:flutter/material.dart';

class MessagePage extends StatefulWidget {
  const MessagePage({super.key});

  @override
  State<MessagePage> createState() => _MessagePageState();
}

class _MessagePageState extends State<MessagePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        centerTitle: true,
        title: Text("Messages", style: TextStyle(color: Colors.white),),
      ),
      body: ListView(
        children: [
          _itemMessage(),
          _itemMessage(),
        ],
      ),
    );
  }

  Widget _itemMessage() {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(16),
      margin: EdgeInsets.only(top: 2),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Image(
                height: 55,
                width: 55,
                image: AssetImage("assests/images/image_1.jpg"),
                fit: BoxFit.cover,
              ),
              SizedBox(width: 10,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text("Ismatilla", style: TextStyle(
                          fontSize: 17, fontWeight: FontWeight.bold),),
                      SizedBox(width: 10,),
                      Text("19:51", style: TextStyle(
                          fontSize: 16, fontWeight: FontWeight.normal),),
                    ],
                  ),

                  Text("How are You", style: TextStyle(
                      fontSize: 14, fontWeight: FontWeight.normal),),
                ],
              ),
            ],
          ),
          Icon(Icons.arrow_back_ios, color: Colors.black45,),
        ],
      ),
    );
  }
}