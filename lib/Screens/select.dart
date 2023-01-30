import 'package:flutter/material.dart';

void main(){
  runApp(Myselect());
}
class Myselect extends StatelessWidget {
  const Myselect({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ListMyselect(),
    );
  }
}
class ListMyselect extends StatefulWidget {
  const ListMyselect({super.key});

  @override
  State<ListMyselect> createState() => _ListMyselectState();
}

class _ListMyselectState extends State<ListMyselect> {
  var imgList = [
    "images/Asset29.png",
    "images/Asset30.png",
    // "images/Asset31.png",
    // "images/balloons.png",
    // "images/call-answer.png",
    // "images/cart.png",
    // "images/doller.png",
    // "images/dots.png",
    // "images/doublex.png",
    // "images/envelope.png",
    // "images/hospital.png"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        TextFormField(
          decoration: InputDecoration(
                            // hintText: _startTime,
                            hintStyle: TextStyle(color: Colors.white),
                            enabledBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(width: 1, color: Colors.green)),
                            prefixIcon: IconButton(
                              icon: Icon(Icons.access_time_rounded),
                              onPressed: () {
                                
                              
                              },
                            )),
        ),
        ListView.builder(
          itemCount: imgList.length,
          itemBuilder: (context, index){
            return GestureDetector(
              onTap: () {
                
              },
              child: Container(
                width: 300,
                height: 800,
                child: Image.asset(imgList[index]),
              ),
            );
          }
          )
      ],)
    );
  }
}