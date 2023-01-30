// import 'package:carousel_slider/carousel_slider.dart';
// import 'package:flutter/material.dart';
// import 'package:tasqr_project/Screens/HomeScreen.dart';

// class MyList extends StatelessWidget {
//   const MyList({super.key, required this.index});
  
//  final int index;
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: DetailsPage(index: index, title: '', url: '',),
//     );
    
//   }
// }

// // late final int index;
// class DetailsPage extends StatefulWidget {
//   final String url;
//   final String title;
//   late int index;
//    DetailsPage({required this.url, required this.title, required this.index});

//   @override
//   _DetailsPageState createState() => _DetailsPageState();
// }

// class _DetailsPageState extends State<DetailsPage> {
//   List imgList = [
//     'images/image1.jpg',
//     'images/image2.jpg',
//     'images/image4.jpg',
//     // Image.asset('images/image1.jpg'),
//     // Image.asset('images/image2.jpg'),
//     // Image.asset('images/image4.jpg'),
//     // 'https://i.dlpng.com/static/png/6838599_preview.png',
//     // 'https://www.manelsanchez.pt/uploads/media/images/nike-air-force-max-ii-blue-fury-18.jpg',
//     // 'https://www.vippng.com/png/detail/30-302339_nike-women-running-shoes-png-image-transparent-background.png',
//   ];
//   int _current = 0;
//   String selected = "grey";

//   List<T> map<T>(List list, Function handler) {
//     List<T> result = [];
//     for (var i = 0; i < list.length; i++) {
//       result.add(handler(i, list[i]));
//     }
//      return result;
//   }

//   final CarouselController _buttonCarouselController = CarouselController();


//   @override
//   Widget build(BuildContext context) {   
    
//     return Scaffold(
//         backgroundColor: Theme.of(context).canvasColor,
//         appBar: AppBar(
//             title: Center(
//               child: Text(
//                 'Details',
//                 style: TextStyle(
//                     fontFamily: 'OpenSansLight',
//                     fontSize: 26,
//                     color: Theme.of(context).textTheme.headline1?.color),
//               ),
//             ),),
//              body: ListView(
//                     // mainAxisSize: MainAxisSize.min,
//                     children: <Widget>[
//                      //Carousel Slider
//                       CarouselSlider.builder(
//                          carouselController: _buttonCarouselController,
//                           options: CarouselOptions(
//                               // carouselController: _buttonCarouselController,
//   //  T                           height: 100.0,
//                               enlargeCenterPage: true,
//                               enlargeStrategy: CenterPageEnlargeStrategy.height,
//                               initialPage: 0,
//                               reverse: false,
//                               autoPlay: false,
//                               enableInfiniteScroll: false,
//                               scrollDirection: Axis.horizontal,
//                               onPageChanged: (index, fn) {
//                                 setState(() {
//                                   _current = index;
//                                 });
//                               }),
//                                itemCount: imgList.length,
//                           itemBuilder: (BuildContext context, int index) =>
//                               Builder(builder: (BuildContext context) {
//                             return Image.asset(
//                               imgList[index],
//                               fit: BoxFit.contain,
//                             );
//                           }),
                        
//                       ),
//                       SizedBox(height: 10),
//                      //Indicator to show current index of images
//                       Row(
//                         mainAxisAlignment: MainAxisAlignment.center,
//                         children: map<Widget>(imgList, (index, url) {
//                           return Container(
//                             width: 30.0,
//                             height: 2.0,
//                             margin: EdgeInsets.symmetric(
//                                 vertical: 10.0, horizontal: 4.0),
//                                  decoration: BoxDecoration(
//                               shape: BoxShape.rectangle,
//                               borderRadius: BorderRadius.circular(10.0),
//                               color: _current == index
//                                   ? Colors.deepPurple
//                                   : Colors.grey,
//                             ),
//                           );
//                         }),
//                       ),
//                     Padding(
//                         padding: const EdgeInsets.all(8.0),
//                         child: Container(
//                           height: 30,
//                           child: Row(
//                             mainAxisAlignment: MainAxisAlignment.start,
//                             crossAxisAlignment: CrossAxisAlignment.start,
//                             children: <Widget>[
//                               Text('Color',
//                                   style: TextStyle(
//                                       fontFamily: 'OpenSansLight',
//                                       fontSize: 24)),
//                             ],
//                           ),
//                         ),
//                       ),
//                       Flexible(
//                         fit: FlexFit.loose,
//                         child: Container(
//                           // width: width,
//                           height: 120,
//                           child: ListView.builder(
//                             scrollDirection: Axis.horizontal,
//                             itemCount: imgList.length,
//                             itemBuilder: (BuildContext context, int index) {
//                              //Color selector from images to manually control the carousel 
//                              return GestureDetector(
//                                 onTap: () {
//                                   setState(() {
//                                     selected = imgList[index];
//                                     _current = index;
//                                     _buttonCarouselController
//                                     .animateToPage(_current);
//                                     print('I HAVE SELECTED $selected');
//                                   });
//                                 },
//                                 // child: ColorTicker(
//                                 //   image: imgList[index],
//                                 //   selected: selected == imgList[index],
//                                 // ),
//                               );
//                             },
//                           ),
//                         ),
//                       ), 
//                      ],
//                     ),
//                    );
//   }
// }