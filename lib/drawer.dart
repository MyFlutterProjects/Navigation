
import 'package:flutter/material.dart';
import 'package:navigation/drawer_menu.dart';
import 'package:navigation/main.dart';
import 'package:navigation/profile_screen.dart';
import 'package:navigation/setting_screen.dart';
class DrawerExample extends StatefulWidget {
  @override
  _DrawerExampleState createState() => _DrawerExampleState();
}

class _DrawerExampleState extends State<DrawerExample> {
  static var _currentIndex = 0;
  @override
  void initState() {
    _currentIndex = 0;
    super.initState();
  }

  final List<Widget> _widget = [
    ProfileScreen(),
    ChangePassword(),
    SettingScreen(),
    HomeScreen()


  ];



  @override
  Widget build(BuildContext context) {
    return _currentIndex == 3  ? HomeScreen() :  Scaffold(

        appBar: AppBar(
          title: Text('Drawer'),
          elevation: 1.0,
          centerTitle: true,
        ),
         drawer: MenuDrawerWidget(onTap: (ctx, i) {
           setState(() {
             _currentIndex = i;
             Navigator.pop(ctx);
           });
         },),
         body:  _widget[_currentIndex],

    );
  }

}
