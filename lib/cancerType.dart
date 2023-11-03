import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'componant/constants.dart';

class CancerType extends StatelessWidget {
  const CancerType({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Color(0XFF092831),
      appBar: AppBar(
        backgroundColor: Constants.kPinkColor,
        title: Text(''
            'Colon cancer types ', style:TextStyle(
            color:Colors.white,
            fontSize: 25.0,
            fontWeight: FontWeight.bold

        )),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          padding: EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              //Image(image:  AssetImage("assets/images/R.jpg"),),
              Padding(
                padding: EdgeInsets.all(10.0),
                child: Text('Types of colon cancer ',
                  style: TextStyle(fontSize: 25 ,
                    fontWeight: FontWeight.bold,
                    color: Colors.white70 , decorationThickness: 10.0 ,),),
              ),
               Padding(
                 padding: EdgeInsets.all(20.0),
                 child: Text('1. Polyps'
                , style: TextStyle(fontSize: 17 , color: Colors.white70 ,) ),),
              Padding(
                padding: EdgeInsets.all(20.0),
                child: Text('2. Malignant Neoplasm'
                    , style: TextStyle(fontSize: 17 , color: Colors.white70 ,) ),),
              Padding(
                padding: EdgeInsets.all(10.0),
                child: Text('Polys',
                  style: TextStyle(fontSize: 25 ,
                    fontWeight: FontWeight.bold,
                    color: Colors.white70 , decorationThickness: 10.0 ,),),
              ),
              Padding(
                padding: EdgeInsets.all(20.0),
                child: Text('They are growths on the inside of your instestine. '
                    'but some can turn into colorectal cancer if not removed early '
                    'The most common types of intestinal polys are adenomas and hyperplastic '
                    'polyps. They form when there are problems with the way cells grow and '
                    'repair in the lining of the colon.'
                    , style: TextStyle(fontSize: 20 , color: Colors.white70 ,) ),),
              Padding(
                padding: EdgeInsets.all(10.0),
                child: Text('The most common types of polyps are : ',
                  style: TextStyle(fontSize: 25 ,
                    fontWeight: FontWeight.bold,
                    color: Colors.white70 , decorationThickness: 10.0 ,),),
              ),
              Padding(
                padding: EdgeInsets.all(20.0),
                child: Text('1. Adenomas: These can resemble the normal lining of the colon but look different under a microscope.'
                    'They can become cancerous.'
                    , style: TextStyle(fontSize: 20 , color: Colors.white70 ,) ),),
              Padding(
                padding: EdgeInsets.all(20.0),
                child: Text('2. Hyperplastic polys: Colon Cancer rarely develops from hyperplastic polys, as they are typically benign'
                    , style: TextStyle(fontSize: 20 , color: Colors.white70 ,) ),),
              Padding(
                padding: EdgeInsets.all(20.0),
                child: Text('Some of these polys may grow into malignant colon over time, '
                    'if they are not removed during the ezrly stages of treatment.',
                  style: TextStyle(fontSize: 20 ,
                    fontWeight: FontWeight.bold,
                    color: Colors.white70 , decorationThickness: 10.0 ,),),
              ),
              Padding(
                padding: EdgeInsets.all(10.0),
                child: Text('Malignant Neoplasm ',
                  style: TextStyle(fontSize: 25 ,
                    fontWeight: FontWeight.bold,
                    color: Colors.white70 , decorationThickness: 10.0 ,),),
              ),
              Padding(
                padding: EdgeInsets.all(20.0),
                child: Text('Malignant neoplasms are cancerous tumors. They develop when cells '
                    'grow and divide more than they should. '
                    'Malignant neoplasm can spread to nearby tissues and to distant parts of your body'
                    '. Treatment options may include surgery , Chemotherapy or radiation therapy . Early detection is key so be '
                    'sure to attend all recommmended cancer screening.'
                    , style: TextStyle(fontSize: 20 , color: Colors.white70 ,) ),),
            ],
          ),
        ),
      ),
    );
  }
}
