import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/basic.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_ml/search_doctor.dart';

import 'Ml Model.dart';

class Warning extends StatelessWidget {
  const Warning({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Color(0xff55598d),
      body:  SingleChildScrollView(
        scrollDirection: Axis.vertical,


        child: Container(

          child: Column(

            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [

              Image(image:  AssetImage("assets/ai_image.jpg"),),
              Padding(
                padding:  const EdgeInsets.all(40.0),
                child:  Text('WELCOME ''BACK!',
                  style: TextStyle(fontSize: 30 ,
                    fontWeight: FontWeight.bold,
                    color: Colors.white, decorationThickness: 10.0 ,),),),
              Padding(
                padding:  const EdgeInsets.all(10.0),
                child:  Text('I am an intelligent AI robot created to differentiate  between benign and malignant colon cancer  I can think & learn'
                              'but I am still a work in progress so please be kind to me! I am not meant to replace your doctor and i make no guarantrees to'
                              'the accuracy of my reasults. please contact your doctor for actual medical advice.',
                  style: TextStyle(fontSize: 15 ,
                    fontWeight: FontWeight.bold,
                    color: Colors.white70 , decorationThickness: 10.0 ,),),),
              Padding(
                padding:  const EdgeInsets.all(5.0),
                child:  Text('But there are two things that please adhere to in order to get a proper result :',
                  style: TextStyle(fontSize: 15 ,
                    fontWeight: FontWeight.bold,
                    color: Colors.white70 , decorationThickness: 10.0 ,),),),
              Padding(
                padding:  const EdgeInsets.all(10.0),
                child:  Text('1.Your phone must be connected to the Internet.',
                  style: TextStyle(fontSize: 15 ,
                    fontWeight: FontWeight.bold,
                    color: Colors.white70 , decorationThickness: 10.0 ,),),),
              Padding(
                padding:  const EdgeInsets.all(15.0),
                child:  Text('2.The image that you will use in the application must be histology images for colon cancer.',
                  style: TextStyle(fontSize: 15 ,
                    fontWeight: FontWeight.bold,
                    color: Colors.white70 , decorationThickness: 10.0 ,),),),
              SizedBox(height: 40,),
              TextButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.white,),

                ),
                onPressed:(){

                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => MlModel(),
                  ),
                );
              }, child: Text("LET'S GET STARTED!" , style: TextStyle(color: Color(0xff55598d),fontSize: 20 ,
              ),),

              ),

            ],

          ),
        ),
      ),
    );
  }
}
