//Screen 75 satiesh
import 'dart:html';

import 'package:flutter/material.dart';

void main() {
  runApp(TasqrScreen75());
}

class TasqrScreen75 extends StatelessWidget {
  const TasqrScreen75({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryTextTheme: Typography(platform: TargetPlatform.android).white,
        textTheme: Typography(platform: TargetPlatform.android).white,
        scaffoldBackgroundColor: Color.fromRGBO(27, 35, 53, 1),
      ),
      home: CallApp(),
    );
  }
}

class CallApp extends StatefulWidget {
  @override
  State<CallApp> createState() => _CallAppState();
}

class _CallAppState extends State<CallApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Color.fromRGBO(27, 35, 53, 1),
          leading: IconButton(
            icon: Icon(Icons.arrow_back_ios),
            color: Color.fromRGBO(140, 171, 189, 1),
            onPressed: () {},
          ),
          title: TextField(
            decoration: InputDecoration(
              fillColor: Color.fromRGBO(32, 41, 59, 1),
              filled: true,
              border: OutlineInputBorder(),
              hintText: "Add your team here",
              hintStyle: TextStyle(color: Color.fromRGBO(67, 79, 105, 1)),
            ),
          ),
          actions: [
            IconButton(
              icon: Image(
                image: AssetImage('images/user.png'),
                color: Color.fromARGB(255, 171, 167, 167),
              ),
              iconSize: 2,
              onPressed: () {},
            ),
            IconButton(
              icon: Image(
                image: AssetImage('images/bell.png'),
                color: Color.fromARGB(255, 171, 167, 167),
              ),
              iconSize: 25,
              onPressed: () {},
            ),
          ],
        ),
        body: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: ListTile(
                  contentPadding: EdgeInsets.all(10),
                  leading: CircleAvatar(
                      backgroundImage: AssetImage("images/image1.jpg")),
                  title: Column(
                    children: [
                      Row(
                        children: [
                          Text('Jennifer Lopez'),
                        ],
                      ),
                      Row(
                        children: [
                          Transform.rotate(
                            angle: 45,
                            child: Icon(Icons.arrow_downward_sharp,
                                color: Colors.red),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text('3'),
                          ),
                          Container(
                            width: 20,
                          ),
                          Transform.rotate(
                            angle: 45,
                            child: Icon(Icons.arrow_upward_sharp,
                                color: Colors.green),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text('2'),
                          ),
                        ],
                      ),
                    ],
                  )),
            ),
            ListTile(
                contentPadding: EdgeInsets.all(10),
                leading: CircleAvatar(
                    backgroundImage: AssetImage("images/image1.jpg")),
                title: Column(
                  children: [
                    Row(
                      children: [
                        Text('Roy'),
                      ],
                    ),
                    Row(
                      children: [
                        Transform.rotate(
                          angle: 45,
                          child: Icon(Icons.arrow_downward_sharp,
                              color: Colors.red),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text('3'),
                        ),
                        Container(
                          width: 20,
                        ),
                        Transform.rotate(
                          angle: 45,
                          child:
                              Icon(Icons.arrow_upward_sharp, color: Colors.green),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text('4'),
                        ),
                      ],
                    )
                  ],
                )),
            ListTile(
                contentPadding: EdgeInsets.all(10),
                leading: CircleAvatar(
                    backgroundImage: AssetImage("images/image2.jpg")),
                title: Column(
                  children: [
                    Row(
                      children: [
                        Text('Angilina '),
                      ],
                    ),
                    Row(
                      children: [
                        Transform.rotate(
                          angle: 45,
                          child: Icon(Icons.arrow_downward_sharp,
                              color: Colors.red),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text('3'),
                        ),
                        Container(
                          width: 20,
                        ),
                        Transform.rotate(
                          angle: 45,
                          child:
                              Icon(Icons.arrow_upward_sharp, color: Colors.green),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text('5'),
                        ),
                      ],
                    )
                  ],
                )),
            ListTile(
                contentPadding: EdgeInsets.all(10),
                leading: CircleAvatar(
                    backgroundImage: AssetImage("images/image4.jpg")),
                title: Column(
                  children: [
                    Row(
                      children: [
                        Text('Roy Sen'),
                      ],
                    ),
                    Row(
                      children: [
                        Transform.rotate(
                          angle: 45,
                          child: Icon(Icons.arrow_downward_sharp,
                              color: Colors.red),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text('3'),
                        ),
                        Container(
                          width: 20,
                        ),
                        Transform.rotate(
                          angle: 45,
                          child:
                              Icon(Icons.arrow_upward_sharp, color: Colors.green),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text('5'),
                        ),
                      ],
                    )
                  ],
                )),
            ListTile(
                contentPadding: EdgeInsets.all(10),
                leading: CircleAvatar(
                    backgroundImage: AssetImage("images/image2.jpg")),
                title: Column(
                  children: [
                    Row(
                      children: [
                        Text('Angilina Julie'),
                      ],
                    ),
                    Row(
                      children: [
                        Transform.rotate(
                          angle: 45,
                          child: Icon(Icons.arrow_downward_sharp,
                              color: Colors.red),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text('3'),
                        ),
                        Container(
                          width: 20,
                        ),
                        Transform.rotate(
                          angle: 45,
                          child:
                              Icon(Icons.arrow_upward_sharp, color: Colors.green),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text('5'),
                        ),
                      ],
                    )
                  ],
                )),
            ListTile(
                contentPadding: EdgeInsets.all(10),
                leading: CircleAvatar(
                    backgroundImage: AssetImage("images/image1.jpg")),
                title: Column(
                  children: [
                    Row(
                      children: [
                        Text('Swaraj Roy '),
                      ],
                    ),
                    Row(
                      children: [
                        Transform.rotate(
                          angle: 45,
                          child: Icon(Icons.arrow_downward_sharp,
                              color: Colors.red),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text('3'),
                        ),
                        Container(
                          width: 20,
                        ),
                        Transform.rotate(
                          angle: 45,
                          child:
                              Icon(Icons.arrow_upward_sharp, color: Colors.green),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text('5'),
                        ),
                      ],
                    )
                  ],
                )),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
            backgroundColor: Color.fromRGBO(27, 35, 53, 1),
            items: [
              BottomNavigationBarItem(
                  icon: Icon(Icons.list_alt, color: Colors.white), label: ''),
              BottomNavigationBarItem(
                  icon: Icon(Icons.list_alt, color: Colors.white), label: ''),
              BottomNavigationBarItem(
                  icon: Icon(Icons.list_alt, color: Colors.white), label: ''),
            ]));
  }
}