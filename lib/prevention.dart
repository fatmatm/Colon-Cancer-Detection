import "package:flutter/material.dart";

import "componant/constants.dart";

class Prevention extends StatelessWidget {
  const Prevention({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor:Color(0XFF092831),
      appBar: AppBar(
        title : Text("Prevention of Cancer colon: "),
        backgroundColor: Constants.kPinkColor,
      ),
      body:  SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image(image:  AssetImage("assets/images/prevention.jpg"),),
              Padding(
                padding:  const EdgeInsets.all(10.0),
                child:  Text('prevention of cancer colon.',
                  style: TextStyle(fontSize: 30 ,
                    fontWeight: FontWeight.bold,
                    color: Colors.white, decorationThickness: 10.0 ,),),),
              Padding(
                padding:  const EdgeInsets.all(10.0),
                child:  Text('1. Quit smoking.',
                  style: TextStyle(fontSize: 15 ,
                    fontWeight: FontWeight.bold,
                    color: Colors.white70, decorationThickness: 10.0 ,),),),
              Padding(
                padding:  const EdgeInsets.all(10.0),
                child:  Text('2. Maintaining a health weight.',
                  style: TextStyle(fontSize: 15 ,
                    fontWeight: FontWeight.bold,
                    color: Colors.white70 , decorationThickness: 10.0 ,),),),
              Padding(
                padding:  const EdgeInsets.all(10.0),
                child:  Text('3. Healthy eating of fruits, vegetables and whole grains.',
                  style: TextStyle(fontSize: 15 ,
                    fontWeight: FontWeight.bold,
                    color: Colors.white70 , decorationThickness: 10.0 ,),),),
              Padding(
                padding:  const EdgeInsets.all(10.0),
                child:  Text('4. Decreasing saturated fat and red meat intake.',
                  style: TextStyle(fontSize: 15 ,
                    fontWeight: FontWeight.bold,
                    color: Colors.white70 , decorationThickness: 10.0 ,),),),
        Padding(
          padding:  const EdgeInsets.all(10.0),
          child:  Text('5. Screening for people older than 50 years and those with a family history of colon cancer.',
            style: TextStyle(fontSize: 15 ,
              fontWeight: FontWeight.bold,
              color: Colors.white70 , decorationThickness: 10.0 ,),),),

            ],

          ),
        ),
      ),
    );
  }
}
