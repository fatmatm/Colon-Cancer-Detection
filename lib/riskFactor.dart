import 'package:flutter/material.dart';

import 'componant/constants.dart';
class RiskFactor extends StatelessWidget {
  const RiskFactor({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Color(0XFF092831),
      appBar: AppBar(
        title : Text("Risk Factor"),
        backgroundColor: Constants.kPinkColor,
      ),
      body:  SingleChildScrollView(
    scrollDirection: Axis.vertical,
    child: Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          Text('Type of Risk Factor ',
            style: TextStyle(fontSize: 25 ,
              fontWeight: FontWeight.bold,
              color: Colors.white70 , decorationThickness: 10.0 ,),),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Text('1. Risk Factors You Can not control'
                , style: TextStyle(fontSize: 20 , color: Colors.white70 ,) ),),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Text('2. Risk Factors You Can control'
                , style: TextStyle(fontSize: 20 , color: Colors.white70 ,) ),),

          Image(image:  AssetImage("assets/images/Colon-Cancer-Risk-Factors-2.png"),),

          Text('Risk Factors You Can not control',
            style: TextStyle(fontSize: 25 ,
              fontWeight: FontWeight.bold,
              color: Colors.white70 , decorationThickness: 10.0 ,),),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Text('Some things you just can not help , such as : '
                , style: TextStyle(fontSize: 18 , color: Colors.white70 ,) ),),
          Padding(
            padding: const EdgeInsets.only(left: 20 , top: 10),
            child: Text('1. Age : Most People with it are older than 50.'
                , style: TextStyle(fontSize: 18 , color: Colors.white70 ,) ),),
          Padding(
            padding: const EdgeInsets.only(left: 20 , top: 10),
            child: Text('2. Polys or inflammation bowel disease. '
                , style: TextStyle(fontSize: 18 , color: Colors.white70 ,) ),),
          Padding(
            padding: const EdgeInsets.only(left: 20,top: 10,bottom: 10),
            child: Text('3. Family history of colorectal cancer or precancerous colon polys'
                , style: TextStyle(fontSize: 18 , color: Colors.white70 ,) ),),
          Text('Risk Factors You Can control',
            style: TextStyle(fontSize: 25 ,
              fontWeight: FontWeight.bold,
              color: Colors.white70 , decorationThickness: 10.0 ,),),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Text('Try to avoid these things that can raise your '
                'odds of getting the disease :  '
                , style: TextStyle(fontSize: 18 , color: Colors.white70 ,) ),),
          Padding(
            padding: const EdgeInsets.only(left: 20, top: 10),
            child: Text('1. Eating a lot of red or processed meats , or those chooked at '
                'high temperatures'
                , style: TextStyle(fontSize: 18 , color: Colors.white70 ,) ),),
          Padding(
            padding: const EdgeInsets.only(left: 20,top: 10),
            child: Text('2. Obesity : having too much fat around the waist. '
                , style: TextStyle(fontSize: 18 , color: Colors.white70 ,) ),),
          Padding(
            padding: const EdgeInsets.only(left: 20,top: 10),
            child: Text('3. Not exercising enough'
                , style: TextStyle(fontSize: 18 , color: Colors.white70 ,) ),),
          Padding(
            padding: const EdgeInsets.only(left: 20,top: 10),
            child: Text('4. Smoking. '
                , style: TextStyle(fontSize: 18 , color: Colors.white70 ,) ),),
          Padding(
            padding: const EdgeInsets.only(left: 20,top:10,bottom: 10),
            child: Text('5. Heavy alcohol use '
                , style: TextStyle(fontSize: 18 , color: Colors.white70 ,) ),),

        ],
      ),
    ),
      ),
    );
  }
}
