import 'dart:convert';
import 'dart:io';
import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ml/componant/constants.dart';
import 'package:flutter_ml/componant/custom_outline.dart';
import 'package:flutter_ml/prevention.dart';
import 'package:flutter_ml/riskFactor.dart';
import 'package:flutter_ml/search_doctor.dart';
import 'package:flutter_ml/stage.dart';
import 'package:flutter_ml/whatIs.dart';
import 'package:image_picker/image_picker.dart';
import 'package:http/http.dart' as http;

import 'Diagnosis_and_test.dart';
import 'Symptoms.dart';
import 'cancerType.dart';

//https://intel-classfier-production.up.railway.app/predictApi

class MlModel extends StatefulWidget
{
  @override
  State<MlModel> createState()=>_MlModel();


}

class _MlModel extends State<MlModel> {
  String? result;
  final picker=ImagePicker();
  File? img;
  var url="https://classifier-main-production.up.railway.app/predictApi";

  Future pickImage() async{
    PickedFile? pickedFile=await picker.getImage(source: ImageSource.gallery,);
    setState(() {
      img=File(pickedFile!.path);
    });
  }
  upload()async
  {
    final request=http.MultipartRequest("POST",Uri.parse(url));
    final header={"Content_type": "multipart/form-data"};
    request.files.add(http.MultipartFile('fileup',img!.readAsBytes().asStream(),img!.lengthSync(),
    filename: img!.path.split('/').last));
    request.headers.addAll(header);
    final myRequest=await request.send();
    http.Response res=await http.Response.fromStream(myRequest);
    if(myRequest.statusCode==200){
      final resJson=jsonDecode(res.body);
      print("response here: $resJson");
      result=resJson['prediction'];
    }else
      {
        print("Error ${myRequest.statusCode}");
      }

    setState(() {

    });

  }
  @override
  Widget build(BuildContext context) {
    final screenHeight=MediaQuery.of(context).size.height;
    final screenWidth=MediaQuery.of(context).size.width;
    return Scaffold(
      drawer :  Drawer(backgroundColor:Color(0x307C72),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                SizedBox(height: screenHeight*0.12,),
                ListTile(
                    title: Text("Home", style:TextStyle(
                        color:Colors.white,
                      fontSize: 16.0,
                    )),
                    leading: Icon(Icons.home,
                    color:Colors.white),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => MlModel(),
                        ),
                      );
                    }),
                ListTile(
                    title: Text("Search to Doctor ", style:TextStyle(
                      color:Colors.white,
                      fontSize: 16.0,
                    )),
                    leading: Icon(Icons.search,
                        color:Colors.white),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => SearchDoctor(),
                        ),
                      );
                    }),
                ListTile(
                    title:Text("Colorectal cancer",
                        style:TextStyle(
                          color:Colors.white,
                          fontSize: 16.0,
                        )
                      ),
                    leading: Icon(Icons.help,
                        color:Colors.white),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => WhatIs(),
                        ),
                      );
                    }),
                ListTile(
                    title: Text("Cancer Type", style:TextStyle(
                        color:Colors.white,
                      fontSize: 16.0,
                    )),
                    leading: Icon(Icons.bloodtype_outlined,
                        color:Colors.white),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => CancerType(),
                        ),
                      );
                    }),
                ListTile(
                    title: Text("Risk Factor" ,style:TextStyle(
                        color:Colors.white,
                      fontSize: 16.0,
                    )),
                    leading: Icon(Icons.smoke_free,
                        color:Colors.white),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => RiskFactor(),
                        ),
                      );
                    }),
                ListTile(
                    title: Text("Symptoms of colon cancer ", style:TextStyle(
                        color:Colors.white,
                      fontSize: 16.0,
                    )),
                    leading: Icon(Icons.sign_language_sharp,
                        color:Colors.white),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Symptoms(),
                        ),
                      );
                    }),
                ListTile(
                    title: Text("Stages of colon cancer ", style:TextStyle(
                        color:Colors.white,
                      fontSize: 16.0,
                    )),
                    leading: Icon(Icons.type_specimen_outlined,
                        color:Colors.white),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Stage(),
                        ),
                      );
                    }),
                ListTile(
                    title: Text("Diagnosis and Tests", style:TextStyle(
                        color:Colors.white,
                        fontSize: 16.0,
                    )),
                    leading: Icon(Icons.health_and_safety,
                        color:Colors.white),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Diagnosis(),
                        ),
                      );
                    }),
                ListTile(
                    title: Text("Prevention of cancer colon", style:TextStyle(
                        color:Colors.white,
                        fontSize: 16.0,
                        fontFamily: 'Open Sans',

                    )),
                    leading: Icon(Icons.not_interested,
                        color:Colors.white),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Prevention(),
                        ),
                      );
                    }),
                
              ],
            ),
          ],
        ),
      ),
      backgroundColor: Constants.kBlackColor,
      extendBody: true,
      appBar: AppBar(
        backgroundColor: Constants.kPinkColor,
        title: Text('Colon Cancer Detector', style:TextStyle(
            color:Colors.white,
          fontSize: 23.0,
          fontWeight: FontWeight.bold

        )),
      ),
      body: SizedBox(
         height: screenHeight,
    width: screenWidth,
   child: Stack(children: [
     Positioned(
       top: screenHeight*0.1,
       left: -88,
       child: Container(
    height: 166,
    width: 166,
    decoration: BoxDecoration(
    shape: BoxShape.circle,
    color: Constants.kPinkColor
    ),
         child: BackdropFilter(
           filter: ImageFilter.blur(
             sigmaX: 200,
             sigmaY: 200,
           ),
         ),
    ),
     ),
     Positioned(
       top: screenHeight * 0.3,
       right: -100,
       child: Container(
         height: 200,
         width: 200,
         decoration: const BoxDecoration(
           shape: BoxShape.circle,
           color: Constants.kGreenColor,
         ),
         child: BackdropFilter(
           filter: ImageFilter.blur(
             sigmaX: 200,
             sigmaY: 200,
           ),
           child: Container(
             height: 200,
             width: 200,
             color: Colors.transparent,
           ),
         ),
       ),
     ),
     SafeArea(child:
     Column(
       mainAxisAlignment: MainAxisAlignment.start,
       crossAxisAlignment: CrossAxisAlignment.center,
       children: [
         SizedBox(height: screenHeight*0.05,),
         CustomOutline(
           strokeWidth: 4,
           radius: screenWidth * 0.8,
           padding: const EdgeInsets.all(4),
           width: screenWidth * 0.8,
           height: screenWidth * 0.8,
           gradient: LinearGradient(
               begin: Alignment.topLeft,
               end: Alignment.bottomRight,
               colors: [
                 Constants.kPinkColor,
                 Constants.kPinkColor.withOpacity(0),
                 Constants.kGreenColor.withOpacity(0.1),
                 Constants.kGreenColor
               ],
               stops: const [
                 0.2,
                 0.4,
                 0.6,
                 1
               ]),
           child: Center(
             child: img == null
                 ? Container(
               decoration: const BoxDecoration(
                 shape: BoxShape.circle,
                 image: DecorationImage(
                   fit: BoxFit.cover,
                   alignment: Alignment.bottomLeft,
                   image:
                   AssetImage('assets/img-onboarding.png'),
                 ),
               ),
             )
                 :  Container(
               decoration: BoxDecoration(
                 shape: BoxShape.circle,
                 image: DecorationImage(
                   fit: BoxFit.cover,
                   alignment: Alignment.bottomLeft,
                   image:
                   FileImage(img!),
                 ),
               ),
             ),
           ),
         ),
         SizedBox(height: screenHeight*0.05,),
         Center(
           child: img==null?
           Text('No image selected',textAlign: TextAlign.center,
           style: TextStyle(color: Constants.kWhiteColor.withOpacity(0.85,),fontSize:30,
             fontWeight: FontWeight.w700,),
           )
               :
           Text('Result is : $result',textAlign: TextAlign.center,
             style: TextStyle(color: Constants.kWhiteColor.withOpacity(0.85,),fontSize: screenHeight<= 667 ? 18 : 34,
               fontWeight: FontWeight.w700,),
           )

         ),
         SizedBox(height: screenHeight*0.03,),
         CustomOutline(
           strokeWidth: 3,
           radius: 20,
           padding: const EdgeInsets.all(3),
           width: 160,
           height: 38,
           gradient: const LinearGradient(
             begin: Alignment.topLeft,
             end: Alignment.bottomRight,
             colors: [Constants.kPinkColor, Constants.kGreenColor],
           ),
           child: Container(
             decoration: BoxDecoration(
               borderRadius: BorderRadius.circular(20),
               gradient: LinearGradient(
                 begin: Alignment.topLeft,
                 end: Alignment.bottomRight,
                 colors: [
                   Constants.kPinkColor.withOpacity(0.5),
                   Constants.kGreenColor.withOpacity(0.5)
                 ],
               ),
             ),
             child:ElevatedButton(
               style: ButtonStyle(
                 backgroundColor: MaterialStateProperty.all(Colors.white12,),

               ),
               onPressed: (){
                 pickImage();
               },
               child: Text('Select Image ',style: TextStyle(
                 fontSize: 14,
                 color: Constants.kWhiteColor,
               )),
             ),
           ),
         ),
         SizedBox(
           height: 15,
         ),
         CustomOutline(
           strokeWidth: 3,
           radius: 20,
           padding: const EdgeInsets.all(3),
           width: 160,
           height: 38,
           gradient: const LinearGradient(
             begin: Alignment.topLeft,
             end: Alignment.bottomRight,
             colors: [Constants.kPinkColor, Constants.kGreenColor],
           ),
           child: Container(
             decoration: BoxDecoration(
               borderRadius: BorderRadius.circular(20),
               gradient: LinearGradient(
                 begin: Alignment.topLeft,
                 end: Alignment.bottomRight,
                 colors: [
                   Constants.kPinkColor.withOpacity(0.5),
                   Constants.kGreenColor.withOpacity(0.5)
                 ],
               ),
             ),
             child:ElevatedButton(
               style: ButtonStyle(
                 backgroundColor: MaterialStateProperty.all(Colors.white12,),

               ),
               onPressed: (){
                 upload();

               },
               child: Text('Upload Image',style: TextStyle(
                 fontSize: 14,
                 color: Constants.kWhiteColor,
               )),
             ),
           ),
         ),
       ],
     ),),
    ]
   ),
      ),

    );
  }
}