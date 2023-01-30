import 'dart:math';
import 'package:flutter/material.dart';

// main method with runapp runs the class A4Run
void main() => runApp(A4Run());

class A4Run extends StatefulWidget {
A4Run({Key? key}) : super(key: key);

@override
A4RunState createState() => A4RunState();
}

class A4RunState extends State<A4Run> {
// list of images
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
	
Widget imageWid= new Container();

@override
Widget build(BuildContext context) {
	// count of the list of image
	var ImgCount = imgList.length;

	// MaterialApp with debugShowCheckedModeBanner false
	return MaterialApp(
	debugShowCheckedModeBanner: false,
	home: Scaffold(
	
		body: Column(
		  children: [
        // imageWid,
        TextFormField(
          
          decoration: InputDecoration(
                           label: imageWid,
                            // hintText: imageWid.toString(),
                            hintStyle: TextStyle(color: Colors.white),
                            enabledBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(width: 1, color: Colors.green)),
                            prefixIcon: IconButton(
                              icon: Icon(Icons.access_time_rounded),
                              onPressed: () {
                                
                              
                              },
                            )),),
		  
		    // list view to show images and list count
		   Container(
        width: 300,
        height: 300,
		     child: ListView(
		      	scrollDirection: Axis.horizontal,
		      	children: [
		      	
		      	// showing list of images
		      	for (var item in imgList)
		      		Center(
		      		child: Container(child: IconButton(icon: item,onPressed: () {
		      		  imageWid = item;
                setState(() {
                  
                });

		      		},),)
        // Container(width: 80, height: 80, child: item),
		      		)
		      	],
		      ),
		   ),
		    
		  ],
		),
	),
	);
}
}


