
import 'dart:html';
import 'dart:math';
import 'package:flutter/material.dart';
import 'package:paged_vertical_calendar/paged_vertical_calendar.dart';
import 'package:intl/intl.dart';
import 'package:tasqr_project/Screens/NewScreen2.dart';
import 'package:tasqr_project/Screens/NewScreen54.dart';
import 'package:tasqr_project/Screens/NewScreen75.dart';
import 'package:tasqr_project/Screens/Screen47.dart';



import 'NewScreen52.dart';

void main() => runApp(Home());

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) => MaterialApp(
        debugShowCheckedModeBanner: false,
        
        theme: ThemeData(
          primaryTextTheme: Typography(platform: TargetPlatform.android).white,
          textTheme: Typography(platform: TargetPlatform.android).white,
          scaffoldBackgroundColor: Color.fromRGBO(27, 35, 53, 1),
        ),
        home: CUSTOMSCREEN()
      );
}
class CUSTOMSCREEN extends StatefulWidget{
 const CUSTOMSCREEN({super.key});

 @override
 State<CUSTOMSCREEN> createState() => _CUSTOMSCREENState();
}


class _CUSTOMSCREENState extends State<CUSTOMSCREEN>{
  @override
  Widget build(BuildContext context){
    return DefaultTabController(
          length: 3,
          child: Scaffold(
            appBar: AppBar(
                centerTitle: true,
                backgroundColor: Color.fromRGBO(27, 35, 53, 1),
                leading: IconButton(
                  icon: Image.asset('images/Group 7755.png'),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => TasqrScreen54()),
                    );
                  },
                ),
                
                title: Image.asset(
                  "images/1024.png",
                  height: 24,
                  width: 24,
                ),
                actions: [
                  IconButton(
                    icon: Image.asset('images/add-user.png'),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => TasqrScreen75()),
                      );
                    },
                  ),
                ]),
                resizeToAvoidBottomInset: true,
            body: Container(
              child: Custom(),
            ),
            bottomNavigationBar: BottomNavigationBar(
                backgroundColor: Color.fromRGBO(27, 35, 53, 1),
                items: [
                  BottomNavigationBarItem(icon:  IconButton(
                              icon: Icon(Icons.list_alt_outlined,color: Color.fromRGBO(146, 158, 191, 1),),
                              iconSize: 30,
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => TasqrScreen47()),
                                );
                              },
                            ), label: ''),
                  BottomNavigationBarItem(icon:  IconButton(
                              icon: Image.asset('images/calendar.png',width: 100,height: 100,),
                              
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => TasqrScreen52()),
                                );
                              },
                            ), label: ''),
                   BottomNavigationBarItem(icon:  IconButton(
                              icon: Icon(Icons.list_alt,color: Color.fromRGBO(146, 158, 191, 1),),
                              iconSize: 30,
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => TasqrScreen52()),
                                );
                              },
                            ), label: ''),
                ]),
          ),
        );
  }
}




class Custom extends StatefulWidget {
  @override
  State<Custom> createState() => _CustomState();
}

class _CustomState extends State<Custom> {
 

  String todayDte = '';
  @override
  Widget build(BuildContext context) {
    return PagedVerticalCalendar(
      monthBuilder: (context, month, year) {
       
       
        return Column(
          
          children: [
            Container(
              padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 30),
              margin: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                // color: Theme.of(context).primaryColor,
                borderRadius: BorderRadius.all(Radius.circular(50)),
              ),
              child: Row(
        children: [
                 Text(
                  DateFormat('MMMM yyyy').format(DateTime(year, month)),
                  style: Theme.of(context).textTheme.bodyText1!.copyWith(
                        color: Colors.white,fontSize: 20,
                      ),
                ),
               ]
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  weekText('Su'),
                  weekText('M'),
                  weekText('T'),
                  weekText('W'),
                  weekText('T'),
                  weekText('F'),
                  weekText('S'),
                ],
              ),
            ),
          ],
        );
      },


      


      dayBuilder: (context, date) {
      

        return Column(
          children: [
           
            TextButton(onPressed: (){
        
        setState(() {
          
         todayDte = date.toString().split(" ")[0];
        });
                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => TasqrScreen2(dateFromPrevScreen: todayDte,)),
                                );


        
            }, child: Text( DateFormat('d').format(date),style: TextStyle(color: Color.fromRGBO(110, 130, 177, 1),fontSize: 20),)),
          
            const Divider(),
          ],
        );
      },
    );
  }

  Widget weekText(String text) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(4, 4, 4, 10),
      child: Text(
        text,
        style: TextStyle(color: Color.fromRGBO(84, 97, 128, 1), fontSize: 20),
      ),
    );
  }


  bool isSameDay(DateTime? a, DateTime? b) {
  if (a == null || b == null) {
    return false;
  }

  return a.year == b.year && a.month == b.month && a.day == b.day;
}

}
