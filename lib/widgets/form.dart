import 'package:flutter/material.dart';

class Forms extends StatefulWidget {
  const Forms({super.key});

  @override
  State<Forms> createState() => _FormsState();
}

class _FormsState extends State<Forms> {




  String firstname = '';
  String lastname = '';
  String email = '';
  String password = '';

  final formkey = GlobalKey<FormState>();

  trysubimt()
  {
  final isvalid = formkey.currentState!.validate();
  if (isvalid) {
  formkey.currentState!.save();
  submitform();
  }else{print("error");}
  
  }
 

 submitform(){
      print(firstname);
      print(lastname);
      print(email);
      print(password);

 }




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("form"),),

  body: Center(child: Container(margin: EdgeInsets.all(10),
    child: Form(key: formkey,
      child: Column(children: [
        
        
        
        TextFormField(
          
        decoration: const InputDecoration(hintText: 'enter firstname'),   
        key: ValueKey('firstname'),validator: (value){if (value.toString().isEmpty){return 'Firstname should not be empty';}else{return null;}},
        onSaved: (value) {firstname = value.toString();},
    
        ),
    
    
        TextFormField(
          
        decoration: const InputDecoration(hintText: 'enter lastname'),   
        key: ValueKey('lastname'),validator: (value){if (value.toString().isEmpty){return 'lastname should not be empty';}else{return null;}},
        onSaved: (value) {lastname = value.toString();},
        
        ),
    
    
    
        TextFormField(
          
        decoration: const InputDecoration(hintText: 'enter email'),   
        key: ValueKey('email'),validator: (value){if (value.toString().isEmpty){return 'email should not be empty';}else{return null;}},
        onSaved: (value) {email = value.toString();},
        
        ),
     
    
    
        TextFormField(
          
        decoration: const InputDecoration(hintText: 'enter password'),   
        key: ValueKey('password'),validator: (value){if (value.toString().isEmpty || value.toString().length <= 6){return 'password should not be empty';}else{return null;}},
        onSaved: (value) {password = value.toString()
        ;},
        
        ),
    
    
        TextButton(onPressed: (){trysubimt();}, child: Text("submit"))
    
    
    
    
    
    
    
    
    
    
    
    
    
    
      ],),
    ),
  )),);


  
  }
}