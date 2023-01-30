import 'dart:ui';
import 'dart:html';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:intl/intl.dart';
import 'package:get/get.dart';

import 'package:tasqr_project/Screens/HomeScreen.dart';
import 'package:paged_vertical_calendar/paged_vertical_calendar.dart';
import 'package:flutter/cupertino.dart';
import 'package:tasqr_project/Screens/reusable%20widget.dart';

class TasqrScreen2 extends StatelessWidget {
  final String dateFromPrevScreen;
  const TasqrScreen2({super.key, required this.dateFromPrevScreen});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryTextTheme: Typography(platform: TargetPlatform.android).white,
        textTheme: const TextTheme(
          bodyText2:
              TextStyle(color: Colors.white, fontSize: 15, letterSpacing: 1),
        ),
        scaffoldBackgroundColor: Color.fromRGBO(27, 35, 53, 1),
      ),
      home: SCREEN2(
        dateFromPrevScreen2: this.dateFromPrevScreen,
      ),
    );
  }
}

class SCREEN2 extends StatefulWidget {
  final String dateFromPrevScreen2;
  const SCREEN2({super.key, required this.dateFromPrevScreen2});

  @override
  State<SCREEN2> createState() => _SCREEN2State(op: this.dateFromPrevScreen2);
}

class _SCREEN2State extends State<SCREEN2> {
  TextEditingController _eventnameController = TextEditingController();
  TextEditingController _eventiconController = TextEditingController();
  TextEditingController _eventtimeController = TextEditingController();
  // date
  final String op;
  // Timepicker
  String _startTime = DateFormat('hh:mm a').format(DateTime.now()).toString();
  Duration duration = Duration(hours: 0, minutes: 00);

  _SCREEN2State({required this.op});
  
 
  // Time picker
  void _showDialog(Widget child) {
    showCupertinoModalPopup<void>(
        context: context,
        builder: (BuildContext context) => Container(
              height: 216,
              padding: EdgeInsets.only(top: 10.0),
              // The Bottom margin is provided to align the popup above the system navigation bar.
              margin: EdgeInsets.only(
                bottom: MediaQuery.of(context).viewInsets.bottom,
              ),
              // Provide a background color for the popup.
              color: CupertinoColors.systemBackground.resolveFrom(context),
              // Use a SafeArea widget to avoid system overlaps.
              child: SafeArea(
                top: false,
                child: child,
              ),
            ));
  }

  // ICONS
  List imgList = [
    Image.asset('images/Asset29.png'),
    Image.asset('images/Asset30.png'),
    Image.asset('images/Asset31.png'),
    Image.asset('images/balloons.png'),
    Image.asset('images/envelope.png'),
    Image.asset('images/hospital.png'),
    Image.asset('images/call-answer.png'),
    Image.asset('images/dollar-symbol.png'),
    Image.asset('images/dots.png'),
    Image.asset('images/doublex.png'),
    Image.asset('images/cart.png'),
  ];
  Widget imageWid = new Container();

//   Remainder  //
  int _selectedRemind = 5;
  List<int> remindList = [5, 10, 15, 20];
  @override
  Widget build(BuildContext context) {
    var ImgCount = imgList.length;
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  this.op,
                  style: TextStyle(fontSize: 25, color: Colors.white),
                ),
                TextButton(
                    onPressed: () {},
                    child: Text(
                      'DONE',
                      style: TextStyle(color: Colors.white),
                    ))
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Container(
                padding: EdgeInsets.all(15),
                width: 300,
                height: 500,
                color: Colors.red,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: 260,
                      height: 50,
                      child: TextField(
                        controller: _eventiconController,
                        decoration: InputDecoration(
                            hintText: 'Add Icon',
                            label: imageWid,
                            enabledBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(width: 1, color: Colors.white))),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                      width: 260,
                      height: 50,
                      child: TextField(
                        controller: _eventnameController,
                        decoration: InputDecoration(
                            hintText: 'Meetig Name',
                            enabledBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(width: 1, color: Colors.white))),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),

                    Container(
                      
                      width: 260,
                      height: 60,
                      decoration: BoxDecoration(border: Border.all(color: Colors.white)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          _TimerPickerItem(
                            
                            children: <Widget>[
                              IconButton(
                                  onPressed: () => _showDialog(
                                        CupertinoTimerPicker(
                                          mode: CupertinoTimerPickerMode.hm,
                                          initialTimerDuration: duration,
                                          onTimerDurationChanged:
                                              (Duration newDuration) {
                                            setState(
                                                () => duration = newDuration);
                                          },
                                        ),
                                      ),
                                  icon: Icon(Icons.timer_outlined)),
                              CupertinoButton(
                                
                                // Display a CupertinoTimerPicker with hour/minute mode.
                                onPressed: () => _showDialog(
                                  CupertinoTimerPicker(
                                    mode: CupertinoTimerPickerMode.hm,
                                    initialTimerDuration: duration,
                                    onTimerDurationChanged:
                                        (Duration newDuration) {
                                      setState(() => duration = newDuration);
                                    },
                                  ),
                                ),
                                // In this example, the timer value is formatted manually. You can use intl package
                                // to format the value based on user's locale settings.
                                child: Text(
                                  '$duration',
                                  style: TextStyle(
                                    fontSize: 22.0,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    // 
                    Container(
                      width: 260,
                      decoration: BoxDecoration(border: Border.all(color: Colors.white)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                            child: Text("$_selectedRemind Minutes"),
                          ),
                          DropdownButton(
                              icon: Icon(
                                Icons.keyboard_arrow_down,
                                color: Colors.white,
                              ),
                              iconSize: 32,
                              elevation: 4,
                              underline: Container(height: 0),
                              items: remindList
                                  .map<DropdownMenuItem<String>>((int value) {
                                return DropdownMenuItem<String>(
                                  value: value.toString(),
                                  child: Text(value.toString()),
                                );
                              }).toList(),
                              onChanged: ((String? newValue) {
                                setState(() {
                                  _selectedRemind = int.parse(newValue!);
                                });
                              }))
                        ],
                      ),
                    ),
                    SizedBox(height: 10,),
               
                    Container(
                      child: Row(
                        children: [
                          Container(
                            width: 200,
                            height: 100,
                            child: ListView(
                              scrollDirection: Axis.horizontal,
                              children: [
                                // showing list of images
                                for (var item in imgList)
                                  Center(
                                      child: Container(
                                    child: IconButton(
                                      icon: item,
                                      onPressed: () {
                                        imageWid = item;
                                        setState(() {});
                                      },
                                    ),
                                  )
                                      // Container(width: 80, height: 80, child: item),
                                      )
                              ],
                            ),
                          ),
                          IconButton(
                              onPressed: () {
                                setState(() {
                                  // _validateDate();
                                });
                              },
                              icon: Icon(
                                Icons.verified_sharp,
                                color: Colors.green,
                                size: 50,
                              ))
                        ],
                      ),
                    )
                  ],
                )),
          ],
        ),
      ),
    );
  }
  _validateDate(){
    if(_eventiconController.text.isNotEmpty&& _eventnameController.text.isNotEmpty){
      //add to database
      Get.back();
    }else if(_eventiconController.text.isEmpty || _eventnameController.text.isEmpty){
      Get.snackbar("Required", "All fields are required !",
      snackPosition: SnackPosition.BOTTOM,
      backgroundColor: Colors.yellow);
    }
  }
}

class _TimerPickerItem extends StatelessWidget {
  const _TimerPickerItem({required this.children});

  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        border: Border(
          top: BorderSide(
            color: CupertinoColors.inactiveGray,
            width: 0.0,
          ),
          bottom: BorderSide(
            color: CupertinoColors.inactiveGray,
            width: 0.0,
          ),
        ),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: children,
        ),
      ),
    );
  }
}

