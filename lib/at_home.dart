import 'package:flutter/material.dart';

import 'componant/constants.dart';
class ATHome extends StatelessWidget {
  const ATHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Color(0XFF092831),
      appBar: AppBar(
        title : Text("Test at-Home"),
        backgroundColor: Constants.kPinkColor,
      ),
      body:  SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image(image:  AssetImage("assets/images/download.jpg"),width: 600,),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text('Test at-Home',
                  style: TextStyle(fontSize: 20 ,
                    fontWeight: FontWeight.bold,
                    color: Colors.white , decorationThickness: 10.0 ,),),
              ),
              Padding(
                padding: const EdgeInsets.all(14.0),
                child: Text('At-home colorectal cancer tests are one method of trying to detect cancer or precancerous conditions early.'
                    ' These tests use a stool sample to look for traces of blood which may indicate the presence of a growth or lesion on '
                    'the surface of the colon or rectum. While these growths, or polyps, are not uncommon in individuals 50 years or older,'
                    ' most are not cancerous. However, some polyps, known as adenomas, can become cancerous.'
                    , style: TextStyle(fontSize: 15 , color: Colors.white70 ,) ),),
              Padding(
                padding: const EdgeInsets.all(14.0),
                child: Text('At-home colorectal cancer tests are a screening tool most often used in '
                    'people who do not have any signs or symptoms of cancer. These tests may be prescribed by a'
                    'doctor or ordered directly from companies that offer testing. Individuals should talk with their doctor about what kind of'
                    ' colorectal cancer test is right for them and for support in understanding test results.'
                    , style: TextStyle(fontSize: 15 , color: Colors.white70 ,) ),),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text('Purpose of an at-home colon cancer test: ',
                  style: TextStyle(fontSize: 20 ,
                    fontWeight: FontWeight.bold,
                    color: Colors.white , decorationThickness: 10.0 ,),),),
              Padding(
                padding: const EdgeInsets.all(14.0),
                child: Text('1. Some at-home colorectal cancer tests detect blood while others detect certain DNA biomarkers in a person’s stool.'
                    , style: TextStyle(fontSize: 15 , color: Colors.white70 ,) ),),
              Padding(
                padding: const EdgeInsets.all(14.0),
                child: Text('2. At-home colorectal cancer tests allow for a stool sample to be collected at home and sent to a laboratory where it can be analyzed.'
                    ' Some self-test kits are also able to check for signs of blood in the stool at home without sending the sample to a laboratory.'
                    , style: TextStyle(fontSize: 15 , color: Colors.white70 ,) ),),
              Padding(
                padding: const EdgeInsets.all(14.0),
                child: Text('3.In many cases, at-home colorectal cancer testing is prescribed by a doctor '
                    'and the test kit is sent by mail. Often the doctor can prescribe the test without an in-person appointment.'
                    ' Test kits can also be purchased online or in many pharmacies without a prescription.'
                    , style: TextStyle(fontSize: 15 , color: Colors.white70 ,) ),),


            ],
          ),
        ),
      ),
    );
  }
}
