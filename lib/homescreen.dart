import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:travelapp/Mainscreen.dart';
import 'package:travelapp/largetext/largetxt.dart';
 class Home extends StatefulWidget {
   const Home({Key? key}) : super(key: key);
 
   @override
   State<Home> createState() => _HomeState();
 }
 
 class _HomeState extends State<Home> {
   int current0=0,current1=1,current2=2;
   @override
   Widget build(BuildContext context) {
     return SafeArea(
       child: Scaffold(
         body: PageView.builder(
             itemCount: 3,
             scrollDirection: Axis.vertical,
             itemBuilder: (context,index){
               return Container(
                 width: double.maxFinite,
                 height: double.maxFinite,
                 decoration: BoxDecoration(
                   image: DecorationImage(
                     fit: BoxFit.fill,
                     image: AssetImage('assets/images/welcome${index}.png'),
                   ),
                 ),
                 child: Column(
                   children: [
                   Padding(
                     padding: const EdgeInsets.only(right: 12.0,top: 18.0),
                     child: GestureDetector(
                       onTap: (){Navigator.of(context).push(MaterialPageRoute(builder: (context) => Main()));
                       },
                       child: Align(
                       alignment: AlignmentDirectional.topEnd,
                       child:Icon(Icons.close,color: current2==index?Color.fromRGBO(0,62,109, 0):Color.fromRGBO(0,62,109, 0.3),),),
                     ),
                   ),
                     Container(
                       margin: EdgeInsets.only(top: 10,left: 20,right: 20),
                       child: Row(
                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                         children: [
                           Container(
                             width: 220,
                             child: Column(
                               crossAxisAlignment: CrossAxisAlignment.start,
                               children: <Widget>[
                                 lgtxt(text:'Travel',color: Color.fromRGBO(0,62,109, 1),size:40),
                                 txt(text: 'Companion',size:30,color: Color.fromRGBO(0,62,109, 0.8),),
                                 SizedBox(height: 20,),
                                 current0==index?txt(size: 18,color: Color.fromRGBO(0,62,109, 0.7),text:'We bring people, passions and places together'):
                                 current1==index?txt(size: 18,color: Color.fromRGBO(0,62,109, 0.7),
                                     text:'Plan your next trip, read reviews and get travel advice from our community')
                                 :txt(size: 18,color: Color.fromRGBO(0,62,109, 0.7),text:'Book the perfect trip'),

                                 SizedBox(height: 18,),

                                 Row(

                                   children: [
                                     RichText(
                                       text: TextSpan(
                                         text: 'Continue',
                                         style: TextStyle(
                                             color:current2==index?Color.fromRGBO(0,62,109, 0.4):Color.fromRGBO(0,62,109, 0)),
                                         recognizer: TapGestureRecognizer()..onTap = () {
                                           Navigator.of(context).push(MaterialPageRoute(builder: (context) => Main()));
                                           // Single tapped.
                                         },
                                       ),
                                     ),
                                     Padding(
                                       padding: const EdgeInsets.only(left: 2.0),
                                       child: Icon(Icons.keyboard_double_arrow_right_sharp,
                                           color:current2==index?Color.fromRGBO(0,62,109, 0.4):Color.fromRGBO(0,62,109, 0)),
                                     ),
                                   ],
                                 ),

                               ],
                             ),
                           ),

                           Column(
                             children: List.generate(3, (currentindex) {
                                 return Container(
                                   margin: EdgeInsets.only(top:5),
                                   width: 8,
                                   height: currentindex==index?25:8,
                                   decoration: BoxDecoration(
                                     borderRadius: BorderRadius.circular(8),
                                     color:  currentindex==index?Color.fromRGBO(0,62,109, 1):Color.fromRGBO(0,62,109, 0.5),
                                   ),
                                 );
                               })
                           )
                         ],
                       ),
                     ),
                   ],
                 ),
               );
       }
         ),
       ),
     );
   }
 }
 