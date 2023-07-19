import 'package:flutter/material.dart';
import 'package:learn_flutter/widgets/alert.dart';
import 'package:learn_flutter/widgets/button.dart';
import 'package:learn_flutter/widgets/list_grid.dart';
import 'package:learn_flutter/widgets/snackbar.dart';

class Bottomnav extends StatefulWidget {
  const Bottomnav({super.key});

  @override
  State<Bottomnav> createState() => _BottomnavState();
}

class _BottomnavState extends State<Bottomnav> {
 int myindex = 0;
//  List <Widget> widgetlist = [Text("home"),Text("feed"),Text("search"),Text("logout")];
List <Widget> widgetpage = [button(),Alertwidget(),ListGrid(),Snackbarwidget()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(

    appBar: AppBar(title: const Text("bottom nav"),),


    // body: Center(child: widgetlist[myindex]),
    body: Center(child: widgetpage[myindex]),

   
    bottomNavigationBar: BottomNavigationBar(type: BottomNavigationBarType.fixed,onTap: (index2) {
      setState(() {
        myindex = index2;
        
      });
      
    },
    currentIndex: myindex,
    backgroundColor: Colors.lime,
    
    
    items: const 
      [
        
                      
                  BottomNavigationBarItem(label: 'home',icon: Icon(Icons.home),backgroundColor: Colors.deepOrange),
                  BottomNavigationBarItem(label: 'home',icon: Icon(Icons.feed),backgroundColor: Colors.amberAccent),
                  BottomNavigationBarItem(label: 'home',icon: Icon(Icons.search),backgroundColor: Colors.lightGreen),
                  BottomNavigationBarItem(label: 'home',icon: Icon(Icons.logout),backgroundColor: Colors.grey),
                  
    
    
    
    
    
    
    
    ]),

    );
  }
}