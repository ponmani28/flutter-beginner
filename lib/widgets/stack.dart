import 'package:flutter/material.dart';

class stackwidget extends StatefulWidget {
  const stackwidget({super.key});

  @override
  State<stackwidget> createState() => _stackwidgetState();
}

class _stackwidgetState extends State<stackwidget> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar:AppBar(title: Text("stack"),) ,



      body: Center(child: Stack(children: [Center(child: Positioned(child: Container(height: 400,decoration: const BoxDecoration(image:DecorationImage(image: AssetImage("Assest/day.jpg"),fit: BoxFit.cover) ,),))),
      Center(child: Positioned(child: Container(height: 200,width: 200,color: Colors.grey,))),
      Center(child: Positioned(child: Container(height: 100,width: 100,color: Colors.lime,))),


      Align(alignment: Alignment.bottomRight,child: Container(height: 44,color: Colors.black45,),)
      
      ],),),
    );
  }
}