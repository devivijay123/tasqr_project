//SCREEN56 devi
import 'dart:html';

import 'package:flutter/material.dart';
class TasqrScreen56 extends StatelessWidget {
  const TasqrScreen56({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
       theme: ThemeData(
         iconTheme: const IconThemeData(color: Colors.black,size: 30,),

        textTheme: const TextTheme(bodyText2: TextStyle(color: Colors.white,fontSize: 22),bodyText1: TextStyle(color: Colors.white,fontSize: 22))
      ),
      home: SCREEN56()
    );
  }
}
enum SingingCharacter { on, off }
class SCREEN56 extends StatefulWidget {
  const SCREEN56({super.key});

  @override
  State<SCREEN56> createState() => _SCREEN56State();
}

class _SCREEN56State extends State<SCREEN56> {
   SingingCharacter? _character = SingingCharacter.on;
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       backgroundColor: Color.fromRGBO(27, 35, 53, 1),
      body: SingleChildScrollView( 
        child: Container(
          padding: EdgeInsets.all(20),
          child: Column(children: [
            Center(child: Text("Notifications")),
                ListTile(leading:Icon(Icons.calendar_today,color: Colors.white70,),title: Text("Dialy Remainders",style: TextStyle(color: Color.fromRGBO(244, 247, 255, 90),fontSize: 20)),),
                Row(children: [
                  Container(child: Row(children: [
                    Container(child: Row(children: [
                      Text("On",style: TextStyle(color: Color.fromRGBO(143, 171, 186, 10),),),
                    ],),)
                  ]),)
                ],)
          
          ],)),
        // child: Column(children: [
        //   Container( 
        //     padding: EdgeInsets.only(top: 30,bottom: 10),

        //     child:Text("Notifications",textAlign: TextAlign.center,),),
        //     Padding(
        //       padding: const EdgeInsets.only(left: 6),
        //       child: Card(
               
        //       color: Color.fromRGBO(27, 35, 53, 1),
        //       child: Column(
        //         children: [
        //           ListTile(leading:Icon(Icons.person_add,color: Colors.white70,),title: Text("Dialy Remainders",style: TextStyle(color: Color.fromRGBO(244, 247, 255, 90),fontSize: 20)),
        //          ),
        //          Center(child: Row(

        //         mainAxisAlignment: MainAxisAlignment.spaceAround,
        //           children: [
                    
        //           Container(
        //             height: 50,
        //             child: Row(children: [  Text("On",style: TextStyle(color: Color.fromRGBO(143, 171, 186, 10),),),
        //           Radio(value: SingingCharacter.on, groupValue: _character, onChanged: ((SingingCharacter? value) {
        //            setState(() {
        //             _character = value;
        //           });  
        //           })),],),
        //           ),
        //           Container(child: Row(children: [
        //             Text("off",style: TextStyle(color: Color.fromRGBO(143, 171, 186, 10),),),
        //           Radio(value: SingingCharacter.off, groupValue: _character,activeColor: Colors.white, onChanged: ((SingingCharacter? value) {
        //              setState(() {
        //             _character = value;
        //           });
        //           }))
        //       ]),)
        //           ],
        //          ),),
        //          Align(
        //           alignment: Alignment.centerLeft,
        //           child: Text("You have (4) tasks today",style: TextStyle(color: Color.fromRGBO(143, 171, 186, 10),fontSize: 18),))
        //         ],
        //       ),
        //       ),
        //     ),
          
        //   Divider(color: Colors.white,height: 25,),
        //    Padding(
        //      padding: const EdgeInsets.all(10.0),
        //      child: Card(
             
        //   color: Color.fromRGBO(27, 35, 53, 1),
        //   child: Column(
        //       children: [
        //         ListTile(leading:Icon(Icons.person_add,color: Colors.white70,),title: Text("Team Notifications",style: TextStyle(color: Colors.white70,fontSize: 20),),
        //        ),
        //        Center(child: Row(
        //       mainAxisAlignment: MainAxisAlignment.spaceAround,
        //         children: [
                  
        //         Container(
        //           height: 50,
        //           child: Row(children: [  Text("on",style: TextStyle(color: Color.fromRGBO(143, 171, 186, 10),),),
        //         Radio(value: SingingCharacter.on, groupValue: _character, onChanged: ((SingingCharacter? value) {
        //          setState(() {
        //           _character = value;
        //         });  
        //         })),],),
        //         ),
        //   Container(child: Row(children: [
        //           Text("off",style: TextStyle(color: Color.fromRGBO(143, 171, 186, 10),),),
        //         Radio(value: SingingCharacter.off, groupValue: _character,activeColor: Colors.white, onChanged: ((SingingCharacter? value) {
        //            setState(() {
        //           _character = value;
        //         });
        //         }))
        //   ]),)
        //         ],
        //        ),),
        //        Text("John Doe has COMPLETED the tasqr app submission",style: TextStyle(color: Color.fromRGBO(143, 171, 186, 10),fontSize: 18,),textAlign: TextAlign.center,)
        //       ],
        //   ),
        //   ),
        //    ),
        //       Divider(color: Colors.white,height: 25,),
        //      Padding(
        //        padding: const EdgeInsets.all(10.0),
        //        child: Card(
           
        //   color: Color.fromRGBO(27, 35, 53, 1),
        //   child: Column(
        //     children: [
        //         ListTile(leading:Icon(Icons.person_add,color: Colors.white70,),title: Text("Subscription Notification",style: TextStyle(color: Colors.white70,fontSize: 20),),
        //        ),
        //        Center(child: Row(
        //     mainAxisAlignment: MainAxisAlignment.spaceAround,
        //         children: [
                  
        //         Container(
        //           height: 50,
        //           child: Row(children: [  Text("on",style: TextStyle(color: Color.fromRGBO(143, 171, 186, 10),),),
        //         Radio(value: SingingCharacter.on, groupValue: _character, onChanged: ((SingingCharacter? value) {
        //          setState(() {
        //           _character = value;
        //         });  
        //         })),],),
        //         ),
        //   Container(
        //     child: Row(children: [
        //           Text("off",style: TextStyle(color: Color.fromRGBO(143, 171, 186, 10),),),
        //         Radio(value: SingingCharacter.off, groupValue: _character,activeColor: Colors.white, onChanged: ((SingingCharacter? value) {
        //            setState(() {
        //           _character = value;
        //         });
        //         }))
        //   ]),)
        //         ],
        //        ),),
        //        Text("You have ( 3 ) Subscriptions today",style: TextStyle(color: Color.fromRGBO(143, 171, 186, 10),fontSize: 18,),textAlign: TextAlign.center,)
        //     ],
        //   ),
        //   ),
        //      ),
        //   Divider(color: Colors.white,height: 25,),   
        //        Padding(
        //          padding: const EdgeInsets.all(10.0),
        //          child: Card(
           
        //   color: Color.fromRGBO(27, 35, 53, 1),
        //   child: Column(
        //     children: [
        //       ListTile(leading:Icon(Icons.person_add,color: Colors.white70,),title: Text("Task Reminders",style: TextStyle(color: Colors.white70,fontSize: 20),),
        //      ),
        //      Center(child: Row(
        //     mainAxisAlignment: MainAxisAlignment.spaceAround,
        //       children: [
                  
        //       Container(
        //         height: 50,
        //           child: Row(children: [  Text("on",style: TextStyle(color: Color.fromRGBO(143, 171, 186, 10),),),
        //       Radio(value: SingingCharacter.on, groupValue: _character, onChanged: ((SingingCharacter? value) {
        //          setState(() {
        //           _character = value;
        //       });  
        //       })),],),
        //       ),
        //   Container(child: Row(children: [
        //           Text("off",style: TextStyle(color: Color.fromRGBO(143, 171, 186, 10),),),
        //       Radio(value: SingingCharacter.off, groupValue: _character,activeColor: Colors.white, onChanged: ((SingingCharacter? value) {
        //            setState(() {
        //           _character = value;
        //       });
        //       }))
        //   ]),)
        //       ],
        //      ),),
        //      Text("You have ( 3 ) Subscriptions today",style: TextStyle(color: Color.fromRGBO(143, 171, 186, 10),fontSize: 18,),textAlign: TextAlign.center,)
        //     ],
        //   ),
        //   ),
        //        ),
        //    Divider(color: Colors.white,height: 25,),
        // ],)
      ),
    );
  }
}