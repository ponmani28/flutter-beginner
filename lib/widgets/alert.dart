

import 'package:flutter/material.dart';

class Alertwidget extends StatelessWidget {
  const Alertwidget({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(

      appBar: AppBar(title: Text("alert widget"),),
      body: Center(child: ElevatedButton(onPressed: (){_showmyDialog(context);}, child: Text("show alert")),),
    );
  }
}



Future<void> _showmyDialog(BuildContext context) async{
  return showDialog(context: context, builder: (BuildContext context) {
    return AlertDialog(title: Text("this is alert box"),shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),content: SingleChildScrollView(child: ListBody(children: [Text("this is demo"),Text("this is zared")],)));
  });
} 