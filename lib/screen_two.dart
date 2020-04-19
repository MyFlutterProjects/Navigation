import 'package:flutter/material.dart';

class ScreenTwo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Screen two'),
      ),
      body: Container(
        color: Colors.blueAccent,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
                RaisedButton(
                 child: Text('Go back'),
                onPressed: (){
                  Navigator.pop(context);
                },
              ),
              RaisedButton(
                child: Text('Home'),
                onPressed: (){
                  Navigator.pushNamed(context, '/');
                },
              ),
              RaisedButton(
                child: Text('Bottom Navigation'),
                onPressed: (){
                  Navigator.pushNamed(context, 'bottomNavigation');
                },
              ),
              RaisedButton(
                child: Text('Drawer'),
                onPressed: (){
                  Navigator.pushNamed(context, 'drawer');

                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
