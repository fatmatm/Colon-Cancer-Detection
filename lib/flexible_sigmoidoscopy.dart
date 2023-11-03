import 'package:flutter/material.dart';

import 'componant/constants.dart';
class FlexibleSigmoidoscopy extends StatelessWidget {
  const FlexibleSigmoidoscopy({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor:Color(0XFF092831),
      appBar: AppBar(
        title : Text("Flexible sigmoidoscopy"),
        backgroundColor: Constants.kPinkColor,
      ),
      body:  SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image(image:  AssetImage("assets/images/flexible.png"),height: 400,width: 500,),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text('Flexible sigmoidoscopy',
                  style: TextStyle(fontSize: 20 ,
                    fontWeight: FontWeight.bold,
                    color: Colors.white , decorationThickness: 10.0 ,),),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text('A flexible sigmoidoscopy is a colorectal cancer screening'
                    ' tool used to detect irritation, swelling, ulcers, polyps and precancerous lesions.'
                    ' The procedure requires less time and preparation than a colonoscopy. '
                    'It also doesn’t require sedation or a specialist..'
                    , style: TextStyle(fontSize: 15 , color: Colors.white70 ,) ),),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text('During a flexible sigmoidoscopy exam, a thin, flexible tube (sigmoidoscope) is inserted into the rectum.'
                    'A tiny video camera at the tip of the tube allows the doctor to view the inside '
                    'of the rectum, the sigmoid colon and most of the descending colon.'
                    , style: TextStyle(fontSize: 15 , color: Colors.white ,) ),),

              Padding(
                padding: const EdgeInsets.all(14.0),
                child: Text('Flexible sigmoidoscopy does not allow the doctor to see the entire colon. As a result,'
                    ' flexible sigmoidoscopy alone can not detect cancer or small clumps of cells that could develop into cancer (polyps) farther into the colon.'
                    , style: TextStyle(fontSize: 15 , color: Colors.white70 ,) ),),

            ],
          ),
        ),
      ),
    );
  }
}
