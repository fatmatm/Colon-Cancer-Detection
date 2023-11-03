import 'package:flutter/material.dart';
import 'componant/constants.dart';
class WhatIs extends StatelessWidget {
  const WhatIs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor:Color(0XFF092831),
        appBar: AppBar(
        title : Text("What is colorectal cancer "),
        backgroundColor: Constants.kPinkColor,
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                height: 20,
              ),
              Padding(padding:const EdgeInsets.all(10.0),
              child:Text('What is Colorectal Cancer ?',
                style: TextStyle(fontSize: 25 , fontWeight: FontWeight.bold,color: Colors.white , decorationThickness: 20.0 ,),),
              ),
                Padding(
                padding: const EdgeInsets.all(20.0),
                child: Text('The colon or large intestine , is where the body extracts water and salt '
                    'form soild wastes. the waste than moves through the rectum and exits the body through the anus.'
                  , style: TextStyle(fontSize: 20 , color: Colors.white70 ,) ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Text('The Cancer Colon happens when abnormal cells grow in the lining of the large '
                    'intestine (also called the colon) or (the rectum) . it can strike both men and women , and it has '
                    'the second highest rate of cancer death in the U.S' , style: TextStyle(fontSize: 20 , color: Colors.white70 ,), ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(padding:const EdgeInsets.all(10.0),
                child:Text('Facts Colorectal Cancer : ',
                style: TextStyle(fontSize: 25 , fontWeight: FontWeight.bold,color: Colors.white , decorationThickness: 10.0 ,),),
              ),
                Padding(
                padding: const EdgeInsets.all(20.0),
                child: Text('1. Colon Cancer affects the large intestine and it usually starts with polys in the wall'
                    'of the intestine ' , style: TextStyle(fontSize: 20 , color: Colors.white70 ,), ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Text('2. Symptoms may not apper until  later stage , but if they do , '
                    'gastrointestinal problems are commen symptoms' , style: TextStyle(fontSize: 20 , color: Colors.white70,), ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Text('3. Treatment involves a combination of chemotherapy , and '
                    'surgery , possibly resulting in a colostomy ' , style: TextStyle(fontSize: 20 , color: Colors.white70,), ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Text('4. A healthy lifesyle with a High Fiber , Low Fat '
                    'diet can help prevent colon cancer , and screening can '
                    'detect it in the early stages' , style: TextStyle(fontSize: 20 , color: Colors.white70 ,), ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
