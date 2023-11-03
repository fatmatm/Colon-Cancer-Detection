import 'package:flutter/material.dart';
import 'package:flutter_ml/at_home.dart';
import 'package:flutter_ml/test_find_colonCancer.dart';
import 'package:flutter_ml/virtual_colonoscopy.dart';
import 'componant/constants.dart';
import 'fecal_blood_test.dart';
import 'flexible_sigmoidoscopy.dart';

class Diagnosis extends StatelessWidget {
  const Diagnosis({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor:Color(0XFF092831),
      appBar: AppBar(
        title : Text("Tests of cancer colon"),
        backgroundColor: Constants.kPinkColor,
      ),
      body:  SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image(image:  AssetImage("assets/images/dia.png"),),

              Padding(
                padding: const EdgeInsets.only(left: 14.0 , right: 14.0 ,bottom :14.0,top:14.0),
                child: Text('There are many tests thats that are used to find out for one whether there is tumor or not there and they includ : ',
                  style: TextStyle(fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Colors.white , decorationThickness: 10.0 ,),),),
              Padding(
                  padding: const EdgeInsets.only(left: 10.0 , right: 10.0 ,bottom :10.0),
                  child:   ListTile(
                      title: Text("1. Tests That find colon cancer", style: TextStyle(fontSize: 15 , color: Colors.white70 ,),),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => FindCancer(),
                          ),
                        );
                      }),),
              Padding(
                padding: const EdgeInsets.only(left: 10.0 , right: 10.0 ,bottom :10.0),
                child:   ListTile(
                    title: Text("2. Fecal blood Tests", style: TextStyle(fontSize: 15 , color: Colors.white70 ,),),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => FecalBloosTest(),
                        ),
                      );
                    }),),
              Padding(
                padding: const EdgeInsets.only(left: 10.0 , right: 10.0 ,bottom :10.0),
                child:   ListTile(
                    title: Text("3.Test at-Home", style: TextStyle(fontSize: 15 , color: Colors.white70 ,),),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ATHome(),
                        ),
                      );
                    }),),
              Padding(
                padding: const EdgeInsets.only(left: 10.0 , right: 10.0 ,bottom :10.0),
                child:   ListTile(
                    title: Text("4. Virtual Colonoscopy", style: TextStyle(fontSize: 15 , color: Colors.white70 ,),),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => VirtualColonoscopy(),
                        ),
                      );
                    }),),
              Padding(
                padding: const EdgeInsets.only(left: 10.0 , right: 10.0 ,bottom :10.0),
                child:   ListTile(
                    title: Text("5. Flexible Sigmoidoscopy", style: TextStyle(fontSize: 15 , color: Colors.white70 ,),),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => FlexibleSigmoidoscopy(),
                        ),
                      );
                    }),),
              Padding(
                padding: const EdgeInsets.only(left: 14.0 , right: 14.0 ,bottom :14.0,top:14.0),
                child: Text('Purpose of the test: ',
                  style: TextStyle(fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white , decorationThickness: 10.0 ,),),),
              Padding(
                padding: const EdgeInsets.only(left: 25.0 , top: 15 , ),
                child: Text('1. The purpose of colorectal cancer testing is to look for signs of cancer in people who do not have any symptoms. This is known as screening.'
                    , style: TextStyle(fontSize: 15 , color: Colors.white70 ,) ),),
              Padding(
                padding: const EdgeInsets.only(left: 25.0 , top: 15 , ),
                child: Text('2. The goal of colorectal cancer screening is to find '
                    'abnormal growths before they can become cancer or to find cancer '
                    'at an earlier point when it is easier to treat. Cancer in the colon '
                    'or rectum usually starts as an abnormal growth called a polyp.Screening tests are '
                    'designed to detect bleeding that can not be seen visually and may indicate the presence of a polyp.'
                    , style: TextStyle(fontSize: 15 , color: Colors.white70 ,) ),),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text('Several factors affect which type of screening test is most appropriate for '
                    'a specific person, so it is important to talk with a doctor about the best option for you.',
                  style: TextStyle(fontSize: 15 ,
                    fontWeight: FontWeight.bold,
                    color: Colors.white , decorationThickness: 10.0 ,),),
              ),
            ],
          ),
        ),
      ),
    );
  }
}