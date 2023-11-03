import 'package:flutter/material.dart';

import 'componant/constants.dart';
class VirtualColonoscopy extends StatelessWidget {
  const VirtualColonoscopy({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Color(0XFF092831),
      appBar: AppBar(
        title : Text("Virtual Colonoscopy"),
        backgroundColor: Constants.kPinkColor,
      ),
      body:  SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image(image:  AssetImage("assets/images/virual.jpg"),width: 600,),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text('Virtual Colonoscopy',
                  style: TextStyle(fontSize: 20 ,
                    fontWeight: FontWeight.bold,
                    color: Colors.white , decorationThickness: 10.0 ,),),),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text('Virtual colonoscopy is a minimally invasive exam to'
                      ' screen for cancer of the large intestine (colon cancer). '
                      'Virtual colonoscopy is also known as screening CT colonography.'
                      , style: TextStyle(fontSize: 15 , color: Colors.white70 ,) ),),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text('Unlike traditional colonoscopy, which requires a scope'
                    ' to be inserted into your rectum and advanced through your colon.'
                    , style: TextStyle(fontSize: 15 , color: Colors.white70 ,) ),),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(' virtual colonoscopy uses a CT scan show a 3-D model of your colon to produce hundreds of cross-sectional images of your abdominal organs.'
                'The images are combined and digitally manipulated to provide a detailed view of the inside of the colon and rectum. '
                    'Virtual colonoscopy requires the same bowel preparation as traditional colonoscopy.'
                    , style: TextStyle(fontSize: 15 , color: Colors.white70 ,) ),),

              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text('Virtual colonoscopy is one option used to screen for colon cancer.'
                    , style: TextStyle(fontSize: 15 , color: Colors.white70 ,) ),),

            ],
          ),
        ),
      ),
    );
  }
}
