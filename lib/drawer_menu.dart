import 'package:flutter/material.dart';
import 'package:navigation/profile_screen.dart';

class MenuDrawerWidget extends StatelessWidget {
  final Function onTap;

  const MenuDrawerWidget({Key key, this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: <Widget>[
          Container(
            width: double.infinity,
            padding: EdgeInsets.all(20.0),
            color: Theme.of(context).primaryColor,
            child: Center(
              child: Column(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(top: 30),
                  width: 100,
                  height: 100,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(image: NetworkImage('https://cactusthemes.com/blog/wp-content/uploads/2018/01/tt_avatar_small.jpg'),
                    fit: BoxFit.fill
                    )
                  ),
                ),
                Text('Musoke Latimer', style: TextStyle(fontSize: 18, color: Colors.white), ),

                Text('musoke@gmail.com', style: TextStyle( color: Colors.white), )
              ],
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text('Profile',),
            onTap: ()=>onTap(context, 0),
          ),
          ListTile(
            leading: Icon(Icons.lock),
            title: Text('Change password',),
            onTap: ()=>onTap(context, 1),
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text('Settings',),
            onTap: ()=>onTap(context, 2),
          ),
          ListTile(
            leading: Icon(Icons.home),
            title: Text('Home',),
            onTap: ()=>onTap(context, 3),
          ),
          Divider(height: 1.0,),
          ListTile(
            leading: Icon(Icons.exit_to_app),
            title: Text('Logout',),
            onTap: ()=>onTap(context, 3),
          )
        ],
      ),
    );
  }
}
