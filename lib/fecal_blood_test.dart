import 'package:flutter/material.dart';

import 'componant/constants.dart';
class FecalBloosTest extends StatelessWidget {
  const FecalBloosTest({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Color(0XFF092831),
      appBar: AppBar(
        title : Text("The Fecal Blood Test"),
        backgroundColor: Constants.kPinkColor,
      ),
      body:  SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text('The Fecal Blood Test',
                  style: TextStyle(fontSize: 20 ,
                    fontWeight: FontWeight.bold,
                    color: Colors.white , decorationThickness: 10.0 ,),),
              ),
              Padding(
                padding: const EdgeInsets.all(14.0),
                child: Text('The fecal occult blood test (FOBT) is a diagnostic test to assess for occult blood in the stool.'
                    ' This test has commonly been used for colorectal cancer screening, especially in developed nations.'
                    , style: TextStyle(fontSize: 15 , color: Colors.white70 ,) ),),
              Padding(
                padding: const EdgeInsets.all(14.0),
                child: Text('Fecal occult blood testing is one of many methods used for colon cancer screening, and its use is valid in asymptomatic patients.'
                    'It helps improve the detection of early-stage cancers by guiding patient selection for follow-up tests such as colonoscopies'
                    , style: TextStyle(fontSize: 15 , color: Colors.white70 ,) ),),
              Padding(
                padding: const EdgeInsets.all(14.0),
                child: Text('Depending on the type of test,you give up to three small samples of your stool to the doctor to study.'
                    'Doctors typically recommend these tests every year. if your samples'
                    'show signs of blood, you may need a colonoscopy.'
                    , style: TextStyle(fontSize: 15 , color: Colors.white70 ,) ),),
              Image(image:  AssetImage("assets/images/FOBT.gif"),height: 400, width: 500,),
              Padding(
                padding: const EdgeInsets.all(14.0),
                child: Text('Colon cancer often forms as extensions to the colon wall. These growths '
                    'can be hit by passing food and cause cancer cells and blood to be released into the colon.'
                    ' The cells and blood leave the body with the stool (feces).'
                    , style: TextStyle(fontSize: 15 , color: Colors.white70 ,) ),),
              Image(image:  AssetImage("assets/images/FOBT_Scan_Edit optimized.gif"),width: 500, height: 400,),
              Padding(
                padding: const EdgeInsets.all(14.0),
                child: Text('Samples of stool can be examined for the presence of blood cells. If blood is found,'
                    ' it could indicate that colon or rectal cancer.'
                    , style: TextStyle(fontSize: 15 , color: Colors.white70 ,) ),),


            ],
          ),
        ),
      ),
    );
  }
}
