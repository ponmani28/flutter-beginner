// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';



class container_sized extends StatelessWidget {
  const container_sized({super.key});

  @override
  Widget build(BuildContext context) {


    return Scaffold(

     appBar: AppBar(
      
                      title:Text("container and sized box"),
                      backgroundColor: Colors.purpleAccent,

      ) ,



     body: Center(
                   child: Container(
     
     
                        padding: EdgeInsets.all(20),
                        
     
                        decoration: BoxDecoration(
                                    shape: BoxShape.rectangle,
                                    borderRadius: BorderRadius.only(topLeft: Radius.circular(20),),
                                    boxShadow:[BoxShadow(blurRadius: 20)]),
     
     
                        child: Text("hello22",style: TextStyle(fontSize: 30))
     
         
         ),
     ),








    );
     
    
    
    
    
    
    
    }
}



























      // appBar: AppBar(title: const Text("container and sized box"),backgroundColor: Colors.deepPurpleAccent,),

      // // body: Center(child: SizedBox(height: 50,width: 50,child:Text("hello",))),  cannot add color or shape to the sized box

      // body: Center(child: Container(
      //   padding: EdgeInsets.all(20),
      //   height: 50,
      //   width: 50,
        
      //   decoration:  BoxDecoration(shape: BoxShape.rectangle,color: Colors.greenAccent,borderRadius: BorderRadius.only(topLeft: Radius.circular(20),),boxShadow: [BoxShadow(blurRadius: 20)]
      //   ),//borderRadius: BorderRadius.circular(20)
      //   child:const Text("hello",style: TextStyle(fontSize: 30),))), 
        