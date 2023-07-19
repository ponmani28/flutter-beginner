import 'package:flutter/material.dart';

class cloneui extends StatefulWidget {
  const cloneui({super.key});

  @override
  State<cloneui> createState() => _cloneuiState();
}

class _cloneuiState extends State<cloneui> {
  
  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;

    return  Scaffold(


      body: Container( color: Colors.lightBlueAccent, 
      
      
      child: Column(
        children: [Stack( children: [
          
                              Positioned( child: Container(
                                
                                                        height: 500,
                                                        child: Stack(
                                        
                                                              children: [Positioned(child: Container(height: 460,color: Colors.tealAccent,child: const Image(image: AssetImage("Assest/day.jpg"),fit: BoxFit.cover,),)),
                                                                        const Positioned(bottom: 0,right: 24,child:CircleAvatar(radius: 50,backgroundImage: AssetImage("Assest/day.jpg") ,) )],
                                                                
                                    
              
              
              
              
              
              
              
              
              ),
              
              
              
              
              
              
              
              
              
              ),  


                          
              )
              
              
              
              ],),
              Container(padding: EdgeInsets.all(10),child: Column(mainAxisAlignment: MainAxisAlignment.start,children: [Text("madrid city ",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),SizedBox(height:10),Text("this is rando, description")],),),Divider(),
              Container(height: 20,width: w,child: Expanded(child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,children: [rowsicon("20", Icons.favorite_rounded),rowsicon("20", Icons.favorite_rounded),rowsicon("20", Icons.favorite_rounded),],)),),Divider(),
              Container(padding: EdgeInsets.all(20),child: Text("To Secure a responsible career opportunity to fully utilize my training and skills, while making a significant contribution to the success of the company."),)
              
              
              ],



              ),    ),
   
   
   
   
   
   
   
   
   
   
   
   
   
    );
  }
}



Widget rowsicon(String text,IconData icon){
  return Row(children: [Text(text,style: TextStyle(fontSize: 20),),SizedBox(width: 5,),Icon(icon)]);

}