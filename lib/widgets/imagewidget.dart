import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class ImageWidget extends StatelessWidget {
  const ImageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(

      appBar: AppBar(title: Text("image widgets")),
      // body: Center(child: Container(
      //   height: 200,width: 200,
      //   decoration:BoxDecoration(
      //     borderRadius: BorderRadius.circular(20),color: Colors.lightBlue,
      //     boxShadow:[BoxShadow(blurRadius: 2,color: Colors.blueGrey,spreadRadius: 4)],
          
      //     image: DecorationImage(image: AssetImage("Assest/day.jpg"),
      //     fit: BoxFit.cover),))),
      body: Center(child: Container(child: CachedNetworkImage(placeholder:(context, url) => CircularProgressIndicator(),errorWidget: (context, url, error) => const Icon(Icons.error),
       
      imageUrl: "https://tse4.mm.bing.net/th?id=OIP.JQkD7bkEZbLb1DIVY_HWhwHaHa&pid=Api&P=0&h=180"),),),

       

      

    );
  }
}