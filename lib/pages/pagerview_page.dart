import 'package:flutter/material.dart';

class PagerViewPage extends StatefulWidget {
  const PagerViewPage({super.key});

  @override
  State<PagerViewPage> createState() => _PagerViewPageState();
}

class _PagerViewPageState extends State<PagerViewPage> {
  PageController? _pageController;
  String title="Page one";
  int _selectIndex=0;

  _changeTitle(int index){
    if(index==0){
      title="Page one";
    }else if(index==1){
      title="Page two";
    }else if(index==2){
      title="Page three";
    }
  }
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _pageController=PageController();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text(title),
      ),
      body: PageView(
        onPageChanged: (int index){
          setState(() {
            _changeTitle(index);
            _selectIndex=index;
          });
        },
        controller: _pageController,
        children: [
          Container(
            color: Colors.green,
            child: Center(
              child: Text("Page one",
              style: TextStyle(fontSize: 20),
              ),
            ),
          ),
          Container(
            color: Colors.cyan,
            child: Center(
              child: Text("Page two",
                style: TextStyle(fontSize: 20),
              ),
            ),
          ),
          Container(
            color: Colors.yellow,
            child: Center(
              child: Text("Page three",
                style: TextStyle(fontSize: 20),
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (int index){
          setState(() {
            _changeTitle(index);
            _selectIndex =index;
            _pageController!.animateToPage(index,
                duration: Duration(milliseconds: 300),
                curve: Curves.easeIn);
          });
        },
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.black45,
        currentIndex: _selectIndex,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.search),label: "Search"),
          BottomNavigationBarItem(icon: Icon(Icons.person),label: "Profile"),
        ],
      ),
    );
  }
}
