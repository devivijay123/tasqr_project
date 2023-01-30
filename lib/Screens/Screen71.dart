import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:tasqr_project/Screens/Screen72.dart';


void main() {
 
  runApp(TasqrScreen71());
}
 FirebaseAuth _auth = FirebaseAuth.instance;
class TasqrScreen71 extends StatelessWidget {
  const TasqrScreen71({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        iconTheme: const IconThemeData(
          color: Colors.white,
          size: 30,
        ),
        inputDecorationTheme: InputDecorationTheme(
         
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(
              width: 3,
              color: Color.fromRGBO(41, 52, 77, 1),
            ),
          ),
        ),
        // backgroundColor: Color.fromRGBO(27, 35, 53, 1),
        // primaryTextTheme: Typography(platform: TargetPlatform.android).black,
        // textTheme: Typography(platform: TargetPlatform.android).white,
        textTheme:
            TextTheme(bodyText2: TextStyle(color: Colors.white, fontSize: 24)),
      ),
      home: Screen71(),
    );
  }
}

class Screen71 extends StatefulWidget {
  const Screen71({super.key});

  @override
  State<Screen71> createState() => _Screen71State();
}

class _Screen71State extends State<Screen71> {
  TextEditingController email = new TextEditingController();
  TextEditingController password = new TextEditingController();
  TextEditingController Name = new TextEditingController();
  TextEditingController conpassword = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(27, 35, 53, 1),
      body: Container(
          padding: EdgeInsets.fromLTRB(20, 20, 8, 5),
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.fromLTRB(15, 10, 0, 40),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(Icons.arrow_back_ios),
                    Text(
                      "Sign Up",
                    ),
                    Text('')
                  ],
                ),
              ),
              Form(
                  child: Column(
                // mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text('Name'),
                  TextFormField(
                    style: TextStyle(color: Color.fromRGBO(184, 196, 226, 1),fontSize: 24),
                    controller: Name,
                   
                  ),
                    Padding(
                      padding: const EdgeInsets.only(top: 30),
                      child: const Text('Email Id'),
                    ),
                  TextFormField(
                     style: TextStyle(color: Color.fromRGBO(184, 196, 226, 1),fontSize: 24),
                   controller: email,
                  ),
                    Padding(
                      padding: const EdgeInsets.only(top: 30),
                      child: const Text('Password'),
                    ),
                  TextFormField(
                     obscureText: true,
                   style: TextStyle(color: Color.fromRGBO(184, 196, 226, 1),fontSize: 24),
                   controller: password,
                  ),
                    Padding(
                      padding: const EdgeInsets.only(top: 30),
                      child: const Text('Confirm Password'),
                    ),
                  TextFormField(
                    obscureText: true,
                     style: TextStyle(color: Color.fromRGBO(184, 196, 226, 1),fontSize: 24),
                     controller: conpassword,
                   
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 60),
                    color: Color.fromRGBO(83, 101, 146, 1),
                    width: 352,
                    height: 80,
                    child: ElevatedButton(onPressed: (() {
                    _auth.createUserWithEmailAndPassword(email: email.text, password: password.text,).then((value) => Navigator.push(context, MaterialPageRoute(builder: (((context) => TasqrScreen72())))));
                  }), child: Text('SUBMIT >',style: TextStyle(letterSpacing: 2),),style: ElevatedButton.styleFrom(primary:  Color.fromRGBO(49, 59, 80, 1),),),)
                ],
              )),
            ],
          )),
    );
  }
}
