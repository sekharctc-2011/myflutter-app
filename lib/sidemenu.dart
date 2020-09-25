import 'main.dart';
import 'package:flutter/material.dart';

class NavDrawer extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
              child: new Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    width: 90.0,
                    height: 90.0,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                          image: new NetworkImage("https://i.imgur.com/BoN9kdC.png"),
                          fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  Text("KHATA NAME",
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0, color: Colors.green),
                  ),
                ],
              ),
          ),
          ListTile(
            leading: Icon(Icons.input, color: Colors.green),
            title: Text("Welcome"),
            onTap: () => {

            },
          ),
          ListTile(
            leading: Icon(Icons.verified_user, color: Colors.green),
            title: Text('Profile'),
            onTap: () => {Navigator.of(context).pop()},
          ),
          ListTile(
            leading: Icon(Icons.settings, color: Colors.green),
            title: Text('Settings'),
            onTap: () => {Navigator.of(context).pop()},
          ),
          ListTile(
            leading: Icon(Icons.border_color, color: Colors.green),
            title: Text('Feedback'),
            onTap: () => {Navigator.of(context).pop()},
          ),
          ListTile(
            leading: Icon(Icons.exit_to_app, color: Colors.green),
            title: Text('Logout'),
            onTap: () => {
            appAuth.logout().then(
              (_) => Navigator.of(context).pushReplacementNamed('/login')
              )
            },
          ),
        ],
      ),
    );
  }
}