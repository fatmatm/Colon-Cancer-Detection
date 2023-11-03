import 'package:flutter/material.dart';

import 'componant/constants.dart';

class Symptoms extends StatelessWidget {
  const Symptoms({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Color(0XFF092831),
      appBar: AppBar(
        title : Text("Symptoms of Cancer colon"),
        backgroundColor: Constants.kPinkColor,
      ),
      body:  SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
           child: Column(
             mainAxisAlignment: MainAxisAlignment.start,
             crossAxisAlignment: CrossAxisAlignment.start,
             children: [
              Image(image:  AssetImage("assets/images/symptom.jpg"),),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Text('Cancer Colon does not have early warning sign  , but symptoms may develop as the cancer advance.',
                style: TextStyle(fontSize: 30 ,
                fontWeight: FontWeight.bold,
                color: Colors.white, decorationThickness: 10.0 ,),),
              ),
              SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Text('They include : ',
                style: TextStyle(fontSize: 20 ,
                fontWeight: FontWeight.bold,
                color: Colors.white , decorationThickness: 10.0 ,),),
              ),
              SizedBox(
              height: 15,
              ),
              Padding(
               padding: const EdgeInsets.all(14.0),
               child: Text('1. blood in stool. '
               , style: TextStyle(fontSize: 15 , color: Colors.white ,) ),),
              Padding(
               padding: const EdgeInsets.all(14.0),
               child: Text('2. Diarrhea.'
               , style: TextStyle(fontSize: 15 , color: Colors.white ,) ),),
               Padding(
                 padding: const EdgeInsets.all(14.0),
                 child: Text('3. Constipation.'
                     , style: TextStyle(fontSize: 15 , color: Colors.white ,) ),),
               Padding(
                 padding: const EdgeInsets.all(14.0),
                 child: Text('4. Abdominal pain. '
                     , style: TextStyle(fontSize: 15 , color: Colors.white ,) ),),
               Padding(
                 padding: const EdgeInsets.all(14.0),
                 child: Text('5. Rectal bleeding.'
                     , style: TextStyle(fontSize: 15 , color:Colors.white,) ),),
               Padding(
                 padding: const EdgeInsets.all(14.0),
                 child: Text('6. weakness and fatigue.'
                     , style: TextStyle(fontSize: 15 , color: Colors.white ,) ),),
               Padding(
                 padding: const EdgeInsets.all(14.0),
                 child: Text('7. unexplained weight loss.'
                     , style: TextStyle(fontSize: 15 , color: Colors.white ,) ),),
               Padding(
                 padding: const EdgeInsets.all(14.0),
                 child: Text('8. pain during bowel movements.'
                     , style: TextStyle(fontSize: 15 , color: Colors.white ,) ),),
               Padding(
                 padding: const EdgeInsets.all(14.0),
                 child: Text('9. iron deficiency anemia.'
                     , style: TextStyle(fontSize: 15 , color: Colors.white ,) ),),
               ],
      ),
      ),
      ),
    );
  }
}
