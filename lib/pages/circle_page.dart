import 'package:flutter/material.dart';

class CirclePage extends StatefulWidget {
  const CirclePage({super.key});

  @override
  State<CirclePage> createState() => _CirclePageState();
}

class _CirclePageState extends State<CirclePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan,
        title: Text("Circle page"),
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        width: double.infinity,
        child: Column(
          children: [
            Container(
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                    image:AssetImage("assets/images/im_story2.jpg"),
                  fit: BoxFit.cover
                ),
              ),
            ),

            ClipOval(
              child: Image(
                image: AssetImage("assets/images/im_story2.jpg"),
                width: 100,
                height: 100,
                fit: BoxFit.cover,
              ),
            ),


          ],
        ),
      ),
    );
  }
}
