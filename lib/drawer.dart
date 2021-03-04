import 'package:flutter/material.dart';


class Mydrawer extends StatelessWidget {
  const Mydrawer({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Drawer(
        child: ListView(children: <Widget>[
          UserAccountsDrawerHeader(
            accountName: Text("harsh fulzele"),
            accountEmail: Text("harsh123@gmail.com"),
            currentAccountPicture:
                CircleAvatar(backgroundImage: AssetImage("assets/bg.jpeg")),
          ),
          ListTile(
            leading: Icon(Icons.email),
            title: Text("Account"),
            subtitle: Text("personal"),
            trailing: Icon(Icons.edit),
          ),
          ListTile(
            leading: Icon(Icons.email),
            title: Text("Account"),
            subtitle: Text("harsh123@gmail.com"),
            trailing: Icon(Icons.send),
          ),
        ]),
    
    );
  }
}