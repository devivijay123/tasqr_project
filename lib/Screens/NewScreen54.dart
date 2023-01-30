import 'package:flutter/material.dart';
import 'package:tasqr_project/Screens/NewScreen47.dart';
import 'package:tasqr_project/Screens/NewScreen55.dart';

void main() {
  runApp(TasqrScreen54());
}

class TasqrScreen54 extends StatelessWidget {
  const TasqrScreen54({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryTextTheme: Typography(platform: TargetPlatform.android).white,
        // textTheme: Typography(platform: TargetPlatform.android).white,
        textTheme: TextTheme(
          bodyText2:
              TextStyle(color: Color.fromRGBO(244, 247, 255, 90), fontSize: 20),
        ),
        scaffoldBackgroundColor: Color.fromRGBO(27, 35, 53, 1),
      ),
      title: 'text',
      home: SCREEN54(),
    );
  }
}

class SCREEN54 extends StatefulWidget {
  const SCREEN54({super.key});

  @override
  State<SCREEN54> createState() => _SCREEN54State();
}

class _SCREEN54State extends State<SCREEN54> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: Container(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 50, 20, 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Menu'),
                  Row(
                    children: [
                      IconButton(
                        icon: CircleAvatar(
                          backgroundImage: AssetImage("images/blue_icon.png"),
                          radius: 100,
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => NewtasqrScreen47()),
                          );
                        },
                      ),
                      TextButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => NewtasqrScreen47()),
                            );
                          },
                          child: Text(
                            'Join Premium',
                            style: TextStyle(color: Colors.white, fontSize: 18),
                          ))
                    ],
                  )
                ],
              ),
            ),
            Container(
               padding: const EdgeInsets.fromLTRB(0, 0, 10, 10),
            width: 375,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    width: 100,
                    child: Column(
                      
                      children: [
                        SizedBox(height: 40,),
                        CircleAvatar(
                          backgroundImage: AssetImage("images/image8.jpg"),radius: 40,
                        ),
                        SizedBox(height: 15,),
                        TextButton(onPressed: () {}, child: Text('EDIT',style: TextStyle(color: Color.fromRGBO(244, 247, 255, 80),fontSize: 18),))
                      ],
                    ),
                  ),
                  Container(
                    width: 240,
                   
                    child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    // crossAxisAlignment: CrossAxisAlignment.start,
                    children: [Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [Text('John Doe'),
                                 IconButton(
                              icon: CircleAvatar(backgroundImage: AssetImage("images/pencil-edit.png"),backgroundColor:Color.fromRGBO(27, 35, 53, 1),radius: 10,),
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => TasqrScreen55()),
                                );
                              },
                            ),],),
                  SizedBox(height: 20,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [Text('johndoe@gmail.com'), IconButton(
                              icon: CircleAvatar(backgroundImage: AssetImage("images/pencil-edit.png"),backgroundColor:Color.fromRGBO(27, 35, 53, 1),radius: 10,),
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => TasqrScreen55()),
                                );
                              },
                            ),],)
                  ],),)
                ],
              ),
            ),
             const Divider(
              
                  color: Color.fromRGBO(38, 46, 64, 1),
                ),
                 Container(
     
                  padding: const EdgeInsets.fromLTRB(20, 12, 0, 12),
                  alignment: Alignment.centerLeft,
                  child: const Text('Completed Tasks',),
                ),
                const Divider(
                  height: 10,
                  color: Color.fromRGBO(38, 46, 64, 1),
                ),
               
                 Container(
                  
                  padding: const EdgeInsets.fromLTRB(20, 12, 0, 12),
                  alignment: Alignment.centerLeft,
                  child: const Text('Notifications',),
                ),
                const Divider(
                   height: 10,
                  color: Color.fromRGBO(38, 46, 64, 1),
                ),
                 Container(
                 
                  padding: const EdgeInsets.fromLTRB(20, 12, 0, 12),
                  alignment: Alignment.centerLeft,
                  child: const Text('Know your Icons?',),
                ),
                const Divider(
                  height: 10,
                  color: Color.fromRGBO(38, 46, 64, 1),
                ),
                 Container(
                
                  padding: const EdgeInsets.fromLTRB(20, 12, 0, 12),
                  alignment: Alignment.centerLeft,
                  child: const Text('Feedback / Report a Bug',),
                ),
                const Divider(
                  height: 10,
                  color: Color.fromRGBO(38, 46, 64, 1),
                ),
                 Container(
               
                  margin: const EdgeInsets.fromLTRB(20, 12, 0, 12),
                  alignment: Alignment.centerLeft,
                  child: const Text('Change Password',),
                ),
                const Divider(
                  height: 10,
                  color: Color.fromRGBO(38, 46, 64, 1),
                  
                ),
                 Container(
                
                  margin: const EdgeInsets.fromLTRB(20, 12, 0, 12),
                  alignment: Alignment.centerLeft,
                  child: const Text('Calendar View',),
                ),
                const Divider(
                  height: 10,
                  color: Color.fromRGBO(38, 46, 64, 1),
                ),
                 Container(
               
                margin: const EdgeInsets.fromLTRB(20, 12, 0, 12),
                  alignment: Alignment.centerLeft,
                  child: const Text('Logout',),
                ),
                
          ],
        ),
      ),
      floatingActionButtonLocation:
            
              FloatingActionButtonLocation.centerFloat,
          floatingActionButton: Padding(
            padding: const EdgeInsets.only(bottom: 30),
            child: FloatingActionButton(
              
              onPressed: () {},
            backgroundColor: const Color.fromRGBO(27, 35, 53, 1),
              child: const Icon(
                Icons.close,
                color:  Color.fromRGBO(244, 247, 255, 80)
              ),
            ),
          ),
    );
  }
}
