import 'package:flutter/material.dart';




class Dismissiblewidget extends StatefulWidget {
  const Dismissiblewidget({super.key});

  @override
  State<Dismissiblewidget> createState() => _DismissiblewidgetState();
}

class _DismissiblewidgetState extends State<Dismissiblewidget> {

  List <String> fruit = ["apple","orange","grape"];
  @override
  Widget build(BuildContext context) {
    return  Scaffold(

      appBar: AppBar(title: Text("Dismissible Package")),
      body:ListView.builder(itemCount:fruit.length,itemBuilder: (context, index) {
        final favfruit = fruit[index]; return Dismissible(onDismissed: (direction) {
          if (direction == DismissDirection.startToEnd){
            ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(fruit[index]),backgroundColor: Colors.cyanAccent,));

          }else{
            ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(fruit[index]),backgroundColor: Colors.purpleAccent,));
          }
        },key: Key(favfruit),background: Container(color: Colors.indigoAccent),secondaryBackground: Container(color: Colors.pinkAccent,), child: Card(child: ListTile(title: Text(fruit[index]),),));
      }, )
        
      ) ;
      
      
      



    
    
  }
}