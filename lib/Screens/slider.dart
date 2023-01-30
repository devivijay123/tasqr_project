// // ignore_for_file: depend_on_referenced_packages

// import 'package:carousel_slider/carousel_slider.dart';
// import 'package:flutter/material.dart';

// class MySlider extends StatelessWidget {
//   const MySlider({super.key});

// // This widget is the root of your application.
// @override
// Widget build(BuildContext context) {
// 	return MaterialApp(
// 	debugShowCheckedModeBanner: false,
		
// 	// Title of App
// 	title: 'GFG slider',
// 	theme: ThemeData(
// 		primarySwatch: Colors.green,
// 	),
// 	darkTheme: ThemeData.dark(),
		
// 	//First Screen of Slider App
// 	home: const MYSLIDER(),
// 	);
// }
// }



// class MYSLIDER extends StatefulWidget {
//   const MYSLIDER({super.key});

//   @override
//   State<MYSLIDER> createState() => _MYSLIDERState();
// }

// class _MYSLIDERState extends State<MYSLIDER> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(

// 	body: ListView(
// 		children: [
// 		CarouselSlider(
// 			items: [
				
// 				//1st Image of Slider
// 				Container(
// 				margin: const EdgeInsets.all(6.0),
// 				decoration: BoxDecoration(
// 					borderRadius: BorderRadius.circular(8.0),
// 					image: const DecorationImage(
// 					image: AssetImage('images/image2.jpg'),
// 					fit: BoxFit.cover,
// 					),
// 				),
// 				),
				
// 				//2nd Image of Slider
// 				Container(
// 				margin: const EdgeInsets.all(6.0),
// 				decoration: BoxDecoration(
// 					borderRadius: BorderRadius.circular(8.0),
// 					image: const DecorationImage(
// 					image: AssetImage('images/image4.jpg'),
// 					fit: BoxFit.cover,
// 					),
// 				),
// 				),
				
// 				//3rd Image of Slider
// 				Container(
// 				margin: const EdgeInsets.all(6.0),
// 				decoration: BoxDecoration(
// 					borderRadius: BorderRadius.circular(8.0),
// 					image: const DecorationImage(
// 					image: AssetImage('images/image1.jpg'),
// 					fit: BoxFit.cover,
// 					),
// 				),
// 				),
				
// 				//4th Image of Slider
// 				Container(
// 				margin: const EdgeInsets.all(6.0),
// 				decoration: BoxDecoration(
// 					borderRadius: BorderRadius.circular(8.0),
// 					image: const DecorationImage(
// 					image: AssetImage('images/image1.jpg'),
// 					fit: BoxFit.cover,
// 					),
// 				),
// 				),
				
// 				//5th Image of Slider
// 				Container(
// 				margin: const EdgeInsets.all(6.0),
// 				decoration: BoxDecoration(
// 					borderRadius: BorderRadius.circular(8.0),
// 					image: const DecorationImage(
// 					image: AssetImage('images/image1.jpg'),
// 					fit: BoxFit.cover,
// 					),
// 				),
// 				),

// 		],
			
// 			//Slider Container properties
// 			options: CarouselOptions(
// 				height: 180.0,
// 				enlargeCenterPage: true,
// 				autoPlay: true,
// 				aspectRatio: 16 / 9,
// 				autoPlayCurve: Curves.fastOutSlowIn,
// 				enableInfiniteScroll: true,
// 				autoPlayAnimationDuration: const Duration(milliseconds: 800),
// 				viewportFraction: 0.8,
// 			),
// 		),
// 		],
// 	),

// 	);
//   }
// }
