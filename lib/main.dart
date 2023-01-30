import 'package:flutter/material.dart';
import 'dart:html';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:tasqr_project/Screens/Screen71.dart';
import 'firebase_options.dart';


import 'Screens/HomeScreen.dart';
import 'package:tasqr_project/Screens/NewScreen2.dart';
import 'Screens/listgrid.dart';
import 'Screens/randomimage.dart';
// import 'Screens/select.dart';

void main() async{

await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
);
  // runApp(const TasqrScreen2(dateFromPrevScreen: '',));
  // runApp(const TimerPickerApp());
  // runApp(TasqrScreen71());
  runApp(Home());
  // runApp(MyList(index: 4,));
  // runApp(A4Run());
  // runApp(Myselect());
  
}
FirebaseAuth _auth = FirebaseAuth.instance;
// runApp(const TasqrScreen2(dateFromPrevScreen: '',));