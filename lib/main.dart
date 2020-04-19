import 'package:flutter/material.dart';
import 'package:navigation/bottom_navigation.dart';
import 'package:navigation/drawer.dart';
import 'package:navigation/profile_screen.dart';
import 'package:navigation/screen_two.dart';
import 'package:navigation/screen_one.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => HomeScreen(),
        'screenOne':(context)=> ScreenOne(),
        'bottomNavigation': (context) => AddBottomNavigation(),
        'drawer':(context) => DrawerExample(),
        'profile': (context) => ProfileScreen(),
        'final': (context) => ScreenTwo(),

      },
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
//      home: HomeScreen(),
    );
  }
}


class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Navigation App'),
      ),body: Center(
      child: RaisedButton(
        child: Text('Go to screen 1'),
        onPressed: (){
//          Navigator.push(context, MaterialPageRoute(builder: (context){
//            return ScreenOne();
//          }));
         Navigator.pushNamed(context, 'screenOne');
        },
      ) ,
    ),

    );
  }
}
