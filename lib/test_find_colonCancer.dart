import 'package:flutter/material.dart';

import 'componant/constants.dart';

class FindCancer extends StatelessWidget {
  const FindCancer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Color(0XFF092831),
      appBar: AppBar(
        title : Text("Tests That find Colon Cancer"),
        backgroundColor: Constants.kPinkColor,
      ),
      body:  SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image(image:  AssetImage("assets/images/images.jpg"),height: 400,),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text('Tests that find Colon Cancer ',
                  style: TextStyle(fontSize: 20 ,
                    fontWeight: FontWeight.bold,
                    color: Colors.white , decorationThickness: 10.0 ,),),
              ),
              Padding(
                padding: const EdgeInsets.all(14.0),
                child: Text('Most people should have a colonoscopy every 10 years once they turn 45 . this test uses a'
                    'tube with a tiny camera to look at the whole colon and rectum. it can help'
                    'prevent colorectal cancer by finding tumours early. you doctor will then '
                    'removw the polys(as pictured here). '
                    , style: TextStyle(fontSize: 15 , color: Colors.white70 ,) ),),


            ],
          ),
        ),
      ),
    );
  }
}
