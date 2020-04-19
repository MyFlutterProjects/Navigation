import 'package:flutter/material.dart';

class SettingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: Center(
        child: Text('Setting screen', style: TextStyle(color: Colors.white),),
      ),
    );
  }
}


class ChangePassword extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
      child: Center(
        child: Text('Change password'),
      ),
    );
  }
}

