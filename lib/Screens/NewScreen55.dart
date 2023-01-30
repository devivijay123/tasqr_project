import 'package:flutter/material.dart';
import 'package:tasqr_project/Screens/NewScreen54.dart';


void main() {
  runApp(const TasqrScreen55());
}

class TasqrScreen55 extends StatelessWidget {
  const TasqrScreen55({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'text',
        theme: ThemeData(
        primaryTextTheme: Typography(platform: TargetPlatform.android).white,
        // textTheme: Typography(platform: TargetPlatform.android).white,
        textTheme: TextTheme(
          bodyText2:
              TextStyle(color: Color.fromRGBO(244, 247, 255, 90), fontSize: 20),
        ),
        scaffoldBackgroundColor: Color.fromRGBO(27, 35, 53, 1),
      ),
       
        home: SCREEN55(),
         
        );
  }
}
class SCREEN55 extends StatefulWidget {
  const SCREEN55({super.key});

  @override
  State<SCREEN55> createState() => _SCREEN55State();
}

class _SCREEN55State extends State<SCREEN55> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     backgroundColor: const Color.fromRGBO(27, 35, 53, 1),
          appBar: AppBar(
            backgroundColor: const Color.fromRGBO(27, 35, 53, 1),
            title: const Center(
                child: Text("Menu", style: TextStyle(color: Color.fromRGBO(255, 255, 255, 1)))),
            
          ),
          body: Container(
            padding: const EdgeInsets.fromLTRB(0, 10, 10, 10),
            
            child: Column(
              children: [
                Container(
                  padding: const EdgeInsets.fromLTRB(10, 10, 0, 10),
                  child: Row(
                    
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                               CircleAvatar(
                                
                                backgroundImage: AssetImage("images/image8.jpg"),
                                radius: 35,
                              ),
                              SizedBox(height:15),
                              
                              ElevatedButton(
                              
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: const Color.fromRGBO(27, 35, 53, 1),
                                ),
                                onPressed: () {},
                                child: const Text(
                                  'EDIT',style: TextStyle(color: Color.fromRGBO(255, 255, 255, 90),fontSize: 20)
                                ),
                              ),
                            ]),
                      ),
                      Container(
                        padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              margin: EdgeInsets.fromLTRB(20, 0, 0, 15),
                              
                              width: 230,
                           
                              child: Row(
                              
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: const [
                                   
                                    Text('John D',style: TextStyle(color: Color.fromRGBO(255, 255, 255, 90),fontSize: 20),),
                                    Icon(Icons.close, size: 17,color: Color.fromRGBO(244, 247, 255, 100),)
                                  ]),
                            ),
                           
                            Container(
                              width: 230,
                         
                              margin: const EdgeInsets.fromLTRB(20, 0, 0, 20),
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: const [
                                    Text('johndoe@gmail.com',style: TextStyle(color: Color.fromRGBO(244, 247, 255, 90),fontSize: 20)),
                                    Icon(
                                      Icons.close,
                                      size: 17,color: Color.fromRGBO(244, 247, 255, 100),
                                    )
                                  ]),
                            ),
                            Container(
                              width: 230,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  ElevatedButton(
                                    
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: Color.fromRGBO(23, 226, 54, 1),
                                    
                                    ),
                                    onPressed: () {
                                       Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => TasqrScreen54()),
                                );
                                    },
                                    child: const Text(
                                      'DONE',style: TextStyle(color: Color.fromRGBO(26, 34, 53, 1),fontSize: 20)
                                    ),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
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
                  color: Color.fromRGBO(38, 46, 64, 1),
                ),
                 Container(
                  
                  padding: const EdgeInsets.fromLTRB(20, 12, 0, 12),
                  alignment: Alignment.centerLeft,
                  child: const Text('Add your Subscriptions',),
                ),
                const Divider(
                  color: Color.fromRGBO(38, 46, 64, 1),
                ),
               Container(
                 
                  padding: const EdgeInsets.fromLTRB(20, 12, 0, 12),
                  alignment: Alignment.centerLeft,
                  child: const Text('Know your Icons?',),
                ),
                const Divider(
                   color: Color.fromRGBO(38, 46, 64, 1),
                ),
                Container(
                
                  padding: const EdgeInsets.fromLTRB(20, 12, 0, 12),
                  alignment: Alignment.centerLeft,
                  child: const Text('Feedback / Report a Bug',),
                ),
                const Divider(
                  color: Color.fromRGBO(38, 46, 64, 1),
                ),
                 Container(
               
                  margin: const EdgeInsets.fromLTRB(20, 12, 0, 12),
                  alignment: Alignment.centerLeft,
                  child: const Text('Change Password',),
                ),
                const Divider(
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
          floatingActionButton: FloatingActionButton(
            onPressed: () {},
          backgroundColor: const Color.fromRGBO(27, 35, 53, 1),
            child: const Icon(
              Icons.close,
              color: Color.fromRGBO(244, 247, 255, 80)
            ),
          ),
        
    );
  }
}
