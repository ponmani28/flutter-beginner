import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

class Animatedtextwidget extends StatelessWidget {
  const Animatedtextwidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar(title: Text("animated texts"),),
    
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center,children: [Center(child: AnimatedTextKit(totalRepeatCount: 4,pause: Duration(milliseconds: 200),displayFullTextOnTap: true,animatedTexts: [TypewriterAnimatedText("this is dhee",speed: Duration(seconds: 2),textStyle: TextStyle(fontSize: 22,color: Colors.cyanAccent,fontWeight: FontWeight.bold,))])),
        
        AnimatedTextKit(animatedTexts: [RotateAnimatedText("this is dheena",textStyle: TextStyle(fontSize: 22,color: Colors.cyanAccent,fontWeight: FontWeight.bold,)),
        
        
        RotateAnimatedText("this is dheena",textStyle: TextStyle(fontSize: 55,color: Colors.cyanAccent,fontWeight: FontWeight.bold,)),
         
        
        
        ])
        
        
        
        ],),
      )  ,


      
    
    
    
    );
    
  }
}