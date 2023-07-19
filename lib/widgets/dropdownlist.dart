// // ignore_for_file: camel_case_types

// import 'package:flutter/material.dart';


// class dropdownlistbutton extends StatefulWidget {
//   const dropdownlistbutton({super.key});

//   @override
//   State<dropdownlistbutton> createState() => _dropdownlistbuttonState();
// }

// class _dropdownlistbuttonState extends State<dropdownlistbutton> {

//     String? _selectedItem = 'Item 1';

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: const Text('Dropdown List'),),


//       body: Center(
//         child: DropdownButton<String>(
//                                         value: _selectedItem,

//                                         items: ['Item 1','Item 2','Item 3','Item 4',].map<DropdownMenuItem<String>>((String item) {
//                                                                                       return DropdownMenuItem<String>(value: item, child: Text(item),);
//                                                                                       }).toList(),

//                                         onChanged: (String? newValue) { setState(() { _selectedItem = newValue; });},


          
//         ),
//       ),
//     );
//   }
// }







import 'package:flutter/material.dart';

class but extends StatefulWidget {
  const but({super.key});

  @override
  State<but> createState() => _butState();
}

class _butState extends State<but> {
  String? selectedItem = "item1" ;

  @override
  Widget build(BuildContext context) {
    return Scaffold(


body: DropdownButton(value: selectedItem,

items: ["item1","item2","item3","item4"].map<DropdownMenuItem<String>>((String item) {
  return DropdownMenuItem<String>(value: item,child: Text(item),);
}).toList(),


onChanged: (String? newvalue){ setState(() {
  selectedItem = newvalue;
});},

    ));
  }
}
