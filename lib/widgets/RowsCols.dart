// ignore_for_file: unused_local_variable

import 'package:flutter/material.dart';

class RowsCols extends StatelessWidget {
  const RowsCols({super.key});


  @override
  Widget build(BuildContext context) {

    var w = MediaQuery.of(context).size.width;
    var h = MediaQuery.of(context).size.height;

    return Scaffold(
                    appBar: AppBar(title: const Text("Rows & Cols"),),

                    body: Container(
                             height: 200,
                             width: 100,
                             color: Colors.purple,
        
                             child: Wrap(
                                      direction: Axis.vertical,
                                      alignment:WrapAlignment.end,

                                      children: [
                                                
                                                  Container( height: 40, width: 30, color: Colors.cyan[200]),

                                                  Container(height: 40,width: 30,color: Colors.pink[200]),                                                                                                
                                                    
                                                  Container( height: 40,width: 30,color: Colors.red[300]),                                                  
                                                                                                       
                                                  Container( height: 40, width: 30,color: Colors.red[600]),                                                 
                                                                                                 
                                                  Column(children: [Container(height: 40,width: 30,color: Colors.red[600],)]),
                                                
                                                
                                                ],
                                                    
                                                    
                                                
                                              ),

              
      ),
    );
  }
}
