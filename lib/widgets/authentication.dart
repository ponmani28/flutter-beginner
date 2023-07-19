// import 'package:flutter/material.dart';
// import 'package:learn_flutter/functions/authentication_functions.dart';

// class authentication extends StatefulWidget {
//   const authentication({super.key});

//   @override
//   State<authentication> createState() => _authenticationState();
// }

// class _authenticationState extends State<authentication> {
//   final _formkey = GlobalKey<FormState>();

//   bool islogin =false;
//   String username = '';
//   String email = '';
//   String password = '';

//   @override
//   Widget build(BuildContext context) {
//     return  Scaffold(
//       appBar: AppBar(title: Text("email/password authentication"),),


//       body: Form(child: Container(padding: EdgeInsets.all(20),child: Column(mainAxisAlignment: MainAxisAlignment.center,children: 
      
      
//       [

//                                       // >>>>>>>>>>>  Username <<<<<<<<<<

//         !islogin
//         ? TextFormField(  key: ValueKey('username'),decoration: InputDecoration(hintText: "enter username"),

//         validator:(value) {if (value.toString().length<3){return "username is too small";}else{return null;}},

//         onSaved:(value) {setState(() {username = value!;});},)
        
//         :Container(),

//                                       // >>>>>>>>>  email  <<<<<<<<<<
        
        
//         TextFormField(key: ValueKey('email'),decoration: InputDecoration(hintText: "enter email"),
        
//         validator:(value) {if (!value.toString().contains('@')){return "invalid email";}else{return null;}},

//         onSaved:(value) {setState(() {email = value!;});},),
        
//                                       // >>>>>>>>>>>   password  <<<<<<<<<<
      


//         TextFormField(key: ValueKey('password'),decoration: InputDecoration(hintText: "enter password"),obscureText: true,
        
//         validator:(value) {if (value.toString().length<3){return "password is too small";}else{return null;}},

//         onSaved:(value) {setState(() {password = value!;});},),





//                                      // >>>>>>>>>>>>>  submitbutton(signup/login)  <<<<<<<<<<<<<
        
       
//         Container(width: double.infinity,height: 50,child: ElevatedButton(
//         onPressed: (){
//         if(_formkey.currentState!.validate())
//               {
//                 _formkey.currentState!.save();
                
//                 islogin
//                               ? signin(email, password)
//                               : signup(email, password);
//                 } 
//         }, 
                                                
//         child: islogin
//         ?Text("login")
//         : Text("submit"))),

//                                       // >>>>>>>>>>>  textbutton(switch signup/login)  <<<<<<<<<<

//         TextButton(onPressed: (){setState(() {
//           islogin = !islogin; });},child: 
          
//           islogin
//           ? Text("don't have an account signup")
//           : Text("already signed up? login"))
      
      
      
      
      
//       ],),)),



//     );
//   }
// }


import 'package:flutter/material.dart';


import '../functions/authentication_functions.dart';

class Day24Authentication extends StatefulWidget {
  const Day24Authentication({Key? key}) : super(key: key);

  @override
  _Day24AuthenticationState createState() => _Day24AuthenticationState();
}

class _Day24AuthenticationState extends State<Day24Authentication> {
  final _formkey = GlobalKey<FormState>();
  bool isLogin = false;
  String email = '';
  String password = '';
  String username = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Email/Pass Auth'),
      ),
      body: Form(
        key: _formkey,
        child: Container(
          margin: EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              !isLogin
                  ? TextFormField(
                      key: ValueKey('username'),
                      decoration: InputDecoration(hintText: "Enter Username"),
                      validator: (value) {
                        if (value.toString().length < 3) {
                          return 'Username is so small';
                        } else {
                          return null;
                        }
                      },
                      onSaved: (value) {
                        setState(() {
                          username = value!;
                        });
                      },
                    )
                  : Container(),
              TextFormField(
                key: ValueKey('email'),
                decoration: InputDecoration(hintText: "Enter Email"),
                validator: (value) {
                  if (!(value.toString().contains('@'))) {
                    return 'Invalid Email';
                  } else {
                    return null;
                  }
                },
                onSaved: (value) {
                  setState(() {
                    email = value!;
                  });
                },
              ),
              TextFormField(
                obscureText: true,
                key: ValueKey('password'),
                decoration: InputDecoration(hintText: "Enter Password"),
                validator: (value) {
                  if (value.toString().length < 6) {
                    return 'Password is so small';
                  } else {
                    return null;
                  }
                },
                onSaved: (value) {
                  setState(() {
                    password = value!;
                  });
                },
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                  width: double.infinity,
                  height: 50,
                  child: ElevatedButton(
                      onPressed: () {
                        if (_formkey.currentState!.validate()) {
                          _formkey.currentState!.save();
                          isLogin
                              ? signin(email, password)
                              : signup(email, password);
                        }
                      },
                      child: isLogin ? Text('Login') : Text('Signup'))),
              SizedBox(
                height: 10,
              ),
              TextButton(
                  onPressed: () {
                    setState(() {
                      isLogin = !isLogin;
                    });
                  },
                  child: isLogin
                      ? Text("Don't have an account? Signup")
                      : Text('Already Signed Up? Login'))
            ],
          ),
        ),
      ),
    );
  }
}