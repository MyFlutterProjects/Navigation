import 'package:flutter/material.dart';

class ScreenOne extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Screen one'),
      ),body: Container(
      color: Colors.green,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            RaisedButton(
              child: Text('Go to Screen 2'),
              onPressed: (){
                Navigator.pushNamed(context, 'final');
              },
            ),
            RaisedButton(

              child: Text('Go back'),
              onPressed: (){
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ) ,
    ),

    );
  }
}
