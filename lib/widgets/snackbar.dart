// ignore_for_file: unused_import, prefer_const_declarations



import 'package:flutter/material.dart';
import 'package:learn_flutter/main.dart';



class Snackbarwidget extends StatelessWidget {
  const Snackbarwidget({super.key});

  @override
  Widget build(BuildContext context) {
    return   Scaffold(

      appBar: AppBar(title: const Text("snackbar"),),


      body: ElevatedButton(onPressed: ()
      {
        
        final snack =   SnackBar(content:
                                  
                                  const           Text("this is a snackbar"),
                                  backgroundColor: Colors.cyan,
                                  duration:        const Duration( seconds: 2),
                                  behavior:        SnackBarBehavior.floating,
                                  shape:           RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                                  action:          SnackBarAction(label:"undo",textColor: Colors.pinkAccent, onPressed: (){}),

      );


                                  ScaffoldMessenger.of(context).showSnackBar(snack);

      },
      
       child: const Text("press to see snackbox")),
  
    




    );
  }
}