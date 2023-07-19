

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:learn_flutter/widgets/alert.dart';
import 'package:learn_flutter/widgets/animatedtext.dart';
import 'package:learn_flutter/widgets/authentication.dart';
import 'package:learn_flutter/widgets/bottomnav.dart';
import 'package:learn_flutter/widgets/bottomsheet.dart';
import 'package:learn_flutter/widgets/cloneui.dart';
import 'package:learn_flutter/widgets/dismissible.dart';
import 'package:learn_flutter/widgets/drawer.dart';
import 'package:learn_flutter/widgets/dropdownlist.dart';
import 'package:learn_flutter/widgets/form.dart';
import 'package:learn_flutter/widgets/geolocator.dart';
import 'package:learn_flutter/widgets/imagepicker.dart';
import 'package:learn_flutter/widgets/imagewidget.dart';
import 'package:learn_flutter/widgets/instacloneui.dart';
import 'package:learn_flutter/widgets/list_grid.dart';
import 'package:learn_flutter/widgets/rough.dart';
import 'package:learn_flutter/widgets/snackbar.dart';
import 'package:learn_flutter/widgets/stack.dart';
import 'package:learn_flutter/widgets/tabbar.dart';



void main()async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(myapp());
}
 

class myapp extends StatelessWidget {
  const myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme:  ThemeData(brightness: Brightness.light,primaryColor: Colors.orange),
      home:   const Day24Authentication()
    );
  }
}