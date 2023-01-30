import 'package:flutter/material.dart';
import 'package:tasqr_project/Screens/NewScreen47.dart';



class TasqrScreen53 extends StatelessWidget {
  const TasqrScreen53({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        textTheme: TextTheme(
            bodyText2: TextStyle(
                color: Color.fromRGBO(143, 162, 184, 1), fontSize: 17)),
        floatingActionButtonTheme: FloatingActionButtonThemeData(
            backgroundColor: Color.fromRGBO(27, 35, 53, 1)),
        scaffoldBackgroundColor: const Color.fromRGBO(27, 35, 53, 1),
      ),
      home: SCREEN53(),
    );
  }
}

class SCREEN53 extends StatefulWidget {
  const SCREEN53({super.key});

  @override
  State<SCREEN53> createState() => _SCREEN53State();
}

class _SCREEN53State extends State<SCREEN53> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(27, 35, 53, 1),
        leading: IconButton(onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context) => NewtasqrScreen47(),));
        }, icon: Icon(Icons.arrow_back_ios,),),
        centerTitle: true,
        title: Text('Payment History'),
      ),
      body: Container(
        padding: EdgeInsets.all(18),
        child: Column(
          children: [
            Card(
              shape: RoundedRectangleBorder(
                side: BorderSide(color: Color.fromRGBO(255, 255, 255, 100)),
              ),
              color: const Color.fromRGBO(27, 35, 53, 1),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: EdgeInsets.only(left: 20,right: 20),
                    height: 60,
                    decoration: BoxDecoration(
                        border: Border(bottom: BorderSide(color: Colors.grey))),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [Text('Monthly Plan',style: TextStyle(color: Colors.white),), Text('\$6',style: TextStyle(color:Colors.white),)],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(2, 10, 2, 10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                       
                        Text.rich(TextSpan(text: 'Transaction Id     :' ,children: [TextSpan(text: '  Sdhdjd737Dg',style: TextStyle(color: Colors.white))])),
                        Text.rich(TextSpan(text: 'PaymentStatus    :',children: [TextSpan(text: '  Successful',style: TextStyle(color: Colors.white))])),
                        Text.rich(TextSpan(text: 'PurchaseDate     : ',children: [TextSpan(text: '  09 July 2020',style: TextStyle(color: Colors.white))])),
                        Text.rich(TextSpan(text: 'ExpiryDate          : ',children: [TextSpan(text: '  10 August 2020',style: TextStyle(color: Colors.white))])),
        
                      ],
                    ),
                  )
                ],
              ),
            ),
             Card(
              // shape: RoundedRectangleBorder(
              //   side: BorderSide(color: Color.fromRGBO(255, 255, 255, 100)),
              // ),
              color: const Color.fromRGBO(27, 35, 53, 1),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: EdgeInsets.only(left: 20,right: 20),
                    height: 60,
                    decoration: BoxDecoration(
                        border: Border(bottom: BorderSide(color: Colors.grey))),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [Text('Yearly Plan',style: TextStyle(color: Colors.white),), Text('\$36',style: TextStyle(color:Colors.white),)],
                    ),
                  ),
                ElevatedButton(
                  
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [

                          Text.rich(TextSpan(text: 'Transaction Id     :',style: TextStyle(color: Color.fromRGBO(143, 162, 184, 1)),children: [TextSpan(text: '  Sdhdjd737Dg',style: TextStyle(color: Colors.white))])),
                          Text.rich(TextSpan(text: 'PaymentStatus     :',style: TextStyle(color: Color.fromRGBO(143, 162, 184, 1)),children: [TextSpan(text: '  Successful',)])),
                          Text.rich(TextSpan(text: 'PurchaseDate      : ',children: [TextSpan(text: '  09 July 2020',style: TextStyle(color: Colors.white))])),
                          Text.rich(TextSpan(text: 'ExpiryDate          : ',children: [TextSpan(text: '  10 August 2020',style: TextStyle(color: Colors.white))])),
        
                        ],
                      ),
                    ),onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: ((context) => NewtasqrScreen47())));
                    },style: ElevatedButton.styleFrom(backgroundColor:  const Color.fromRGBO(27, 35, 53, 1),),
                  )
                ],
              ),
            ),
             Card(
              shape: RoundedRectangleBorder(
                side: BorderSide(color: Color.fromRGBO(255, 255, 255, 100)),
              ),
              color: const Color.fromRGBO(27, 35, 53, 1),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: EdgeInsets.only(left: 20,right: 20),
                    height: 60,
                    decoration: BoxDecoration(
                        border: Border(bottom: BorderSide(color: Colors.grey))),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [Text('Monthly Plan',style: TextStyle(color: Colors.white),), Text('\$36',style: TextStyle(color:Colors.white),)],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(18),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [

                        Text.rich(TextSpan(text: 'Transaction Id     :',children: [TextSpan(text: '  Sdhdjd737Dg',style: TextStyle(color: Colors.white))])),
                        Text.rich(TextSpan(text: 'PaymentStatus    :',children: [TextSpan(text: '  Successful',style: TextStyle(color: Colors.white))])),
                        Text.rich(TextSpan(text: 'PurchaseDate     : ',children: [TextSpan(text: '  09 July 2020',style: TextStyle(color: Colors.white))])),
                        Text.rich(TextSpan(text: 'ExpiryDate          : ',children: [TextSpan(text: '  10 August 2020',style: TextStyle(color: Colors.white))])),
        
                      ],
                    ),
                  ),
                ],
              ),
            ),
         
          ],
        ),
      ),
    );
  }
}
