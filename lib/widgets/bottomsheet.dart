import 'package:flutter/material.dart';

class Bottomsheetwidget extends StatelessWidget {
  const Bottomsheetwidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("bottom sheet")),

      body: Center(child: ElevatedButton(onPressed: ()
      {showModalBottomSheet(isDismissible: false,elevation: 0,shape: RoundedRectangleBorder(borderRadius: BorderRadius.only(topLeft: Radius.circular(10),topRight: Radius.circular(10))),backgroundColor: Theme.of(context).primaryColor,context: context, builder: (context) { 
        return const Column(mainAxisSize: MainAxisSize.min,
        children: [Card(shape: RoundedRectangleBorder(borderRadius: BorderRadius.only(topLeft: Radius.circular(5),topRight: Radius.circular(5))),child: ListTile(title: Text("orange"),subtitle: Text("zoe"),)),
        ListTile(title: Text("orange"),subtitle: Text("zoe"),),
        ListTile(title: Text("apple"),subtitle: Text("zoya"),),
        ListTile(title: Text("lichi"),subtitle: Text("zara"),)],);
        
      },);}, child: const Text("show bottom sheet"))),
    );
  }
}