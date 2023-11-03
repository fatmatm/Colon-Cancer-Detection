import 'package:flutter/material.dart';

import 'componant/constants.dart';


class Stage extends StatelessWidget {
  const Stage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Color(0XFF092831),
      appBar: AppBar(
        title : Text("Stage of Cancer colon"),
        backgroundColor: Constants.kPinkColor,
      ),
        body:  SingleChildScrollView(
         scrollDirection: Axis.vertical,
         child: Container(
         child: Column(
           mainAxisAlignment: MainAxisAlignment.start,
           crossAxisAlignment: CrossAxisAlignment.start,
           children: [
             Image(image:  AssetImage("assets/images/stage.jpg"),),
             Padding(
                 padding:  const EdgeInsets.all(15.0),
                 child:  Text('Stage of cancer colon ',
                 style: TextStyle(fontSize: 30 ,
                 fontWeight: FontWeight.bold,
                 color: Colors.white , decorationThickness: 10.0 ,),),),
             Padding(
               padding:  const EdgeInsets.all(10.0),
               child:  Text('There are different ways of staging cancer the stage depend on how far the cancer has splread. here is brief summary of a commonly'
                   'used four stage account of where the cancer is at the beginning of each stage . ',
                 style: TextStyle(fontSize: 15 ,
                   fontWeight: FontWeight.bold,
                   color: Colors.white70 , decorationThickness: 10.0 ,),),),

                       Padding(
                         padding: const EdgeInsets.only(left: 15),
                         child: Text('Stage 0 :  ',
                           style: TextStyle(fontSize: 20 ,
                             fontWeight: FontWeight.bold,
                             color: Colors.white , decorationThickness: 10.0 ,),),
                       ),
                      Padding(
                              padding: const EdgeInsets.only(left: 25.0 , top: 15 , ),
                             child: Text('The cancer is in very early stage . it is known as carinoma in situ . it has ont grown'
                                 'further than the inner layer of the colon . '
                         , style: TextStyle(fontSize: 15 , color: Colors.white70 ,) ),),
             Padding(
               padding: const EdgeInsets.only(left: 15 , top: 15),
               child: Text('Stage 1 :  ',
                 style: TextStyle(fontSize: 20 ,
                   fontWeight: FontWeight.bold,
                   color: Colors.white , decorationThickness: 10.0 ,),),
             ),
             Padding(
               padding: const EdgeInsets.only(left: 25.0 , top: 15 , ),
               child: Text('The cancer colon has grown into the next layer of tissue , but it has not reached the lymph nodes or other organs.'
                   , style: TextStyle(fontSize: 15 , color: Colors.white70 ,) ),),
             Padding(
               padding: const EdgeInsets.only(left: 15 , top: 15),
               child: Text('Stage 2 :  ',
                 style: TextStyle(fontSize: 20 ,
                   fontWeight: FontWeight.bold,
                   color: Colors.white , decorationThickness: 10.0 ,),),
             ),
             Padding(
               padding: const EdgeInsets.only(left: 25.0 , top: 15 , ),
               child: Text('The cancer has reached the outer layers of the colon, but it has not spread beyond the colon.'
                   , style: TextStyle(fontSize: 15 , color: Colors.white70 ,) ),),
             Padding(
               padding: const EdgeInsets.only(left: 15 , top: 15),
               child: Text('Stage 3 :  ',
                 style: TextStyle(fontSize: 20 ,
                   fontWeight: FontWeight.bold,
                   color: Colors.white , decorationThickness: 10.0 ,),),
             ),
             Padding(
               padding: const EdgeInsets.only(left: 25.0 , top: 15 , ),
               child: Text('The cancer has grown through outer layers of the coplon and it has reached one or more more lymph nodes. it has not spread to distant sites.'
                   , style: TextStyle(fontSize: 15 , color: Colors.white70 ,) ),),
             Padding(
               padding: const EdgeInsets.only(left: 15 , top: 15),
               child: Text('Stage 4 :  ',
                 style: TextStyle(fontSize: 20 ,
                   fontWeight: FontWeight.bold,
                   color: Colors.white , decorationThickness: 10.0 ,),),
             ),
             Padding(
               padding: const EdgeInsets.only(left: 25.0 , top: 15 , ),
               child: Text('The cancer has reached other tissues beyond the wall of the colon '
                   'As stage 4 progresses,the cancer reaches distant parts of the body.such as the liver , lungs or bones '
                   , style: TextStyle(fontSize: 15 , color: Colors.white70,) ),),
             Padding(
               padding: const EdgeInsets.only(left: 15 , top: 15,bottom: 15),
               child: Text('Cancer develop progressively.',
                 style: TextStyle(fontSize: 20 ,
                   fontWeight: FontWeight.bold,
                   color: Colors.white , decorationThickness: 10.0 ,),),
             ),


           ],

    ),
    ),
        ),

    );
  }
}


