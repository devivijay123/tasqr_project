import 'package:flutter/material.dart';


void main() {
  runApp(TasqrScreen1());
}

class TasqrScreen1 extends StatelessWidget {
  const TasqrScreen1({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SCREEN1(),
    );
  }
}

class SCREEN1 extends StatefulWidget {
  const SCREEN1({super.key});

  @override
  State<SCREEN1> createState() => _SCREEN1State();
}

class _SCREEN1State extends State<SCREEN1> {
  DateTime today = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Content(),
    );
  }

  Widget Content() {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        children: [
          Text("Selected Day = " + today.toString().split(" ")[0],style: TextStyle(fontSize: 30),),
         
        ],
      ),
    );
  }
}
