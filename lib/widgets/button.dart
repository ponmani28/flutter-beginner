 import 'package:flutter/material.dart';




 class button extends StatelessWidget {
  const button({super.key});

  @override
  Widget build(BuildContext context) {


    
    return  Scaffold(
                       appBar: AppBar(title: const Text("buttons"),),

      body: Column(

             mainAxisAlignment: MainAxisAlignment.center,  

             children: [
                        TextButton(
                          
                                  style: ButtonStyle(
                                                      padding:MaterialStateProperty.all(const EdgeInsets.all(80)),
                                                      overlayColor:MaterialStateProperty.all(Colors.teal),
                                                      elevation: MaterialStateProperty.all(20),
                                                      backgroundColor:MaterialStateProperty.all(Colors.deepOrangeAccent)),

                                  onPressed: (){},
                                  
                                  child: Text("press me",style: TextStyle(fontSize: 20,color: Colors.pink[500]) ),),
                                  
                    const SizedBox(height:20),
                    
                        SizedBox(
                                height: 40,
                                width: 300,
                                  child: ElevatedButton(
                                                  style: ButtonStyle(shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)))),

                                                  onPressed: (){print("hello");}, 

                                                  child: const Text("press me1 ",
                                                        style: TextStyle(color: Colors.purple,fontSize: 20),)),
                                              ) 
                                        
                        
                          
                      
                      
                      
                      ],                                      
                      ),

                    


      ) ;

  }
}














        // child: Column(
      
        //           mainAxisAlignment: MainAxisAlignment.center,
        //           children: [ 
        //                        TextButton(
        //                                   style: ButtonStyle(
        //                                                     backgroundColor: MaterialStateProperty.all(Colors.amber)
        //                                     ),

                                          

        //                                   child:const Text( "PressMe",
        //                                                     style: TextStyle(fontSize: 20),
        //                                                     selectionColor: Colors.deepOrangeAccent,),                                                        
                                                            
        //                                                      onPressed: (){},),
                    
                    
                                              
        //                     ]
                            
        //               ),
        //              ),