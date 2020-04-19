import 'package:flutter/material.dart';

class AddBottomNavigation extends StatefulWidget {
  @override
  _AddBottomNavigationState createState() => _AddBottomNavigationState();
}

class _AddBottomNavigationState extends State<AddBottomNavigation> {
  var  _currentIndex = 0;

  final _tabs = [
    Center(child: Text('Home'),),
    Center(child: Text('Search'),),
    Center(child: Text('users'),),
    Center(child: Text('read'),)
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _tabs[_currentIndex],
      appBar: AppBar(
        title: Text('Bottom navigation'),
      ),
        bottomNavigationBar:BottomNavigationBar(
          currentIndex: _currentIndex,
            type: BottomNavigationBarType.fixed, // of shifting
          elevation: 1.0,
            iconSize: 23,
//            selectedFontSize: 20,
            items:[
              BottomNavigationBarItem(
                  icon: Icon(Icons.home),
                  title: Text('Home'),
                  backgroundColor: Colors.indigo
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.search),
                title: Text('Search'),
                  backgroundColor: Colors.blueAccent
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.people),
                title: Text('users'),
                backgroundColor: Colors.pink
              ),
              BottomNavigationBarItem(
                  icon: Icon(Icons.book),
                  title: Text('read'),
                  backgroundColor: Colors.black12
              ),
            ],
          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
        )

    );
  }
}
