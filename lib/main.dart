import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
      title: "Awsome app",
      home: HomePage(),
      theme: ThemeData(
        primarySwatch: Colors.pink,
      )));
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
TextEditingController _nameController = TextEditingController();
var myText ="Change me";




  @override
void initState(){
  super.initState();
}


  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("awsome app"),
        ),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Card(
              child: Column(
                children: <Widget>[
                  Image.asset(
                    "assets/bg1.jpeg",
                    fit: BoxFit.cover,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Change me",
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    
                    child: TextField(
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                        hintText: "Enter something here !",
                        border: OutlineInputBorder(),
                        labelText: "|Name",
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
        drawer: Drawer(
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
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            myText =_nameController.text;
            setState(() {
                          
                        });
          },
          child : Icon(Icons.refresh),

        ),
        );
  }
}
