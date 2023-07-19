// ignore_for_file: camel_case_types, prefer_const_constructors

import 'package:flutter/material.dart';

class Drawer_widget extends StatefulWidget {
  const Drawer_widget({Key? key}) : super(key: key);

  @override
  State<Drawer_widget> createState() => _Drawer_widgetState();
}

class _Drawer_widgetState extends State<Drawer_widget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Drawer widget"),
      ),
      drawer: Drawer(
        child: Container(
          color: Colors.indigoAccent,
          child: ListView(
            children: [
              DrawerHeader(
                child: Container(
                  color: Colors.grey[700],
                  padding: EdgeInsets.zero,
                  child: Container(
                    padding: EdgeInsets.all(10),
                    child: Row(
                      children: const [
                        CircleAvatar(
                          radius: 40,
                          backgroundImage: NetworkImage(
                            "https://tse4.mm.bing.net/th?id=OIP.YOm8J8tm0ozA5QtWQr-iUAHaJF&pid=Api&P=0&h=180",
                          ),
                        ),
                        SizedBox(width: 10),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("name:zayn"),
                            Text("mail:zad@gmail.com"),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              ListTile(
                leading: Icon(Icons.folder),
                title: Text("my files"),
              ),
              ListTile(
                leading: Icon(Icons.group),
                title: Text("shared with me"),
              ),
              ListTile(
                leading: Icon(Icons.star),
                title: Text("starred"),
              ),
              ListTile(
                leading: Icon(Icons.delete),
                title: Text("trash"),
              ),
              Divider(),
              ListTile(
                leading: Icon(Icons.share),
                title: Text("share"),
              ),
              ListTile(
                leading: Icon(Icons.logout),
                title: Text("logout"),
              ),
            ],
          ),
        ),
      ),
      body: const Center(child: Text("hello!")),
    );
  }
}
