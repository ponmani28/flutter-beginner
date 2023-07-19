import 'package:flutter/material.dart';


// ignore: must_be_immutable
class ListGrid extends StatelessWidget {
   ListGrid({super.key});

   List <String> fruits = ["apple","grape","banana"];
   Map fruits_person = {
    'fruits' : ["apple","grape","banana"],
    'names' : ["zoe","zoya","zara"]
   };
   
 
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      
    
      appBar: AppBar(title: const Text("list and grid"),backgroundColor: Colors.red,elevation: 0,),
      
    // body: Container(child: GridView(gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3,crossAxisSpacing: 20,mainAxisSpacing: 10,childAspectRatio: 2/3),

    //                                                children: const [Card(child:Center(child: Text("orange"))),
    //                                                           Card(child:Center(child: Text("orange"))),
    //                                                           Card(child:Center(child: Text("orange"))) ,  
    //                                                           Card(child:Center(child: Text("orange"))),
                                                   
                                                   
                                                   
                                                   
    //                                                ],      ),),
    body: Container(child:
                        GridView.builder(itemCount: fruits.length,
                        
                                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3,crossAxisSpacing: 20), 
                                
                                itemBuilder: (context, index) 
                                {
                                  return  Card(child: Text(fruits[index]),);
                                }



    ))
    );
  }
}




  // body: Container(
  //           child: ListView(
  //                         children: const [ 
  //                                             Card
  //                                             (child: ListTile(title: Text("orange"),
  //                                             subtitle: Text("zoe"),),
  //                                             ),

  //                                             Card
  //                                             (child: ListTile(title: Text("orange"),
  //                                             subtitle: Text("zoe"),),
  //                                             ),

  //                                             Card
  //                                             (child: ListTile(title: Text("orange"),
  //                                             subtitle: Text("zoe"),),
  //                                             ),

  //                                             Card
  //                                             (child: ListTile(title: Text("orange"),
  //                                             subtitle: Text("zoe"),),
  //                                             ),

  //                                             Card
  //                                             (child: ListTile(title: Text("orange"),
  //                                             subtitle: Text("zoe"),),
  //                                             ),

  //                                             Card
  //                                             (child: ListTile(title: Text("orange"),
  //                                             subtitle: Text("zoe"),),
  //                                             ),

  //                                             Card
  //                                             (child: ListTile(title: Text("orange"),
  //                                             subtitle: Text("zoe"),),
  //                                             ),

  //                                             Card
  //                                             (child: ListTile(title: Text("orange"),
  //                                             subtitle: Text("zoe"),),
  //                                             ),

  //                                             Card
  //                                             (child: ListTile(title: Text("orange"),
  //                                             subtitle: Text("zoe"),),
  //                                             ),

  //                                             Card
  //                                             (child: ListTile(title: Text("orange"),
  //                                             subtitle: Text("zoe"),),
  //                                             ),

  //                                             Card
  //                                             (child: ListTile(title: Text("orange"),
  //                                             subtitle: Text("zoe"),),
  //                                             ),

  //                                             Card
  //                                             (child: ListTile(title: Text("orange"),
  //                                             subtitle: Text("zoe"),),
  //                                             ),

                                              

        
  //     ],)),




  
      // // // body:  Container(child: ListView.builder(itemCount: fruits.length,itemBuilder:(context, index) { return Card(child:ListTile(title: Text(fruits[index],)));
        
      // // },)),

      // body: ListView.builder(itemCount: fruits.length, itemBuilder: (BuildContext context, int index) 
      //        { 
      //           return Card(child: ListTile(
      //                                       onTap: () {
      //                                         print(fruits_person['fruits'][index]);
      //                                       },
      //                                       leading: Icon(Icons.person),        
      //                                       title: Text(fruits_person['fruits'][index]),
      //                                       subtitle: Text(fruits_person['names'][index]),),);
                                            
                                            
      //          },),