import 'package:flutter/material.dart';
import 'package:snippet_coder_utils/FormHelper.dart';
import 'package:url_launcher/url_launcher.dart';
import 'componant/constants.dart';

class SearchDoctor extends StatefulWidget {
  const SearchDoctor({Key? key}) : super(key: key);

  @override
  State<SearchDoctor> createState() => _SearchDoctorState();
}

class _SearchDoctorState extends State<SearchDoctor> {
  List<dynamic> countries = [];

  String? countryId;

  @override
  void initState (){
    super.initState();
    this.countries.add({"id":1,"name": "All Governiment "});
    this.countries.add({"id":2,"name": "Cairo"});
    this.countries.add({"id":3,"name": "giza"});
    this.countries.add({"id":4,"name": "alexandria"});
    this.countries.add({"id":5,"name": " nourth coast"});
    this.countries.add({"id":6,"name": "Qalyubia"});
    this.countries.add({"id":7,"name": "Gharbia"});
    this.countries.add({"id":8,"name": "Monufia"});
    this.countries.add({"id":9,"name": "AL Fayyum"});
    this.countries.add({"id":10,"name": "Dakahlia"});
    this.countries.add({"id":11,"name": "Sharqia"});
    this.countries.add({"id":12,"name": "Beheira"});
    this.countries.add({"id":13,"name": "Damietta"});
    this.countries.add({"id":14,"name": "matroh"});
    this.countries.add({"id":15,"name": "Asyut"});
    this.countries.add({"id":16,"name": "Ismailia"});
    this.countries.add({"id":17,"name": "Hurghada"});
    this.countries.add({"id":18,"name": "Sarm el-sheikh"});
    this.countries.add({"id":19,"name": "port said"});
    this.countries.add({"id":20,"name": "Suez"});
    this.countries.add({"id":21,"name": "Sohag"});
    this.countries.add({"id":22,"name": "Al minya"});
    this.countries.add({"id":23,"name": "Kafr el-Sheikh"});
    this.countries.add({"id":24,"name": "Luxor"});
    this.countries.add({"id":25,"name": "Qena"});
    this.countries.add({"id":26,"name": "Aswan"});
    this.countries.add({"id":27,"name": "Beni Suef"});

  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child:Scaffold(
      appBar: AppBar(
        title: Text("Search of The Doctor"),
        backgroundColor: Constants.kPinkColor,
      ),
          body: Container(
            decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage("assets/robot.jpg"),
              fit: BoxFit.cover,
              colorFilter:
              ColorFilter.mode(Colors.white, BlendMode.darken))
            ),

            child: Column(

              children: [
                  FormHelper.dropDownWidgetWithLabel(

                      context,
                      "governorate",
                      "select governorate",
                      this.countryId,
                      this.countries,
                      (onChangedVal) {
                        this.countryId = onChangedVal;
                        print ("country :$onChangedVal");
                      },
                      (onValidate) {
                        if (onValidate == null ) {
                          return ' Please Select Country ';

                        }
                        return null ;
                      },
                    borderColor: Theme.of(context).highlightColor,
                    borderRadius: 15,
                    borderFocusColor: Theme.of(context).canvasColor,

                    // optionValue: "id",
                    // optionLabel: "label",
                  ),
                TextButton(
                onPressed:
                (){
                  if (countryId =='1'){
                  return _launchURL();
                    }
                  else if (countryId =='2') {
                    return _cairo();
                  }
                  else if (countryId =='3') {
                    return _giza();
                  }
                  else if (countryId =='4') {
                    return _alexandria();
                  }
                  else if (countryId =='5') {
                    return _nourth();
                  }
                  else if (countryId =='6') {
                    return _qalyubia();
                  }
                  else if (countryId =='7') {
                    return _gharbiya();
                  }
                  else if (countryId =='8') {
                    return _menoufia();
                  }
                  else if (countryId =='9') {
                    return _fayoum();
                  }
                  else if (countryId =='10') {
                    return _dakahlia();
                  }
                  else if (countryId =='11') {
                    return _shargia();
                  }
                  else if (countryId =='12') {
                    return _beheira();
                  }
                  else if (countryId =='13') {
                    return _damiette();
                  }
                  else if (countryId =='14') {
                    return _matrouh();
                  }
                  else if (countryId =='15') {
                    return _assiut();
                  }
                  else if (countryId =='16') {
                    return _ismailia();
                  }
                  else if (countryId =='17') {
                    return _hurghada();
                  }
                  else if (countryId =='18') {
                    return _sharm();
                  }
                  else if (countryId =='19') {
                    return _portSaid();
                  }
                  else if (countryId =='20') {
                    return _suez();
                  }
                  else if (countryId =='21') {
                    return _sohag();
                  }
                  else if (countryId =='22') {
                    return _minya();
                  }
                  else if (countryId =='23') {
                    return _kafr();
                  }
                  else if (countryId =='24') {
                    return _luxor();
                  }
                  else if (countryId =='25') {
                    return _qena();
                  }
                  else if (countryId =='26') {
                    return _aswan();
                  }
                  else if (countryId =='27') {
                    return _beniSuef();
                  }

                }
                    , child: Text("Search" , style: TextStyle(
                  color: Colors.black,fontSize: 25 ,
                ),)
                )
              ],

            ),

          ),
    ),);
  }
}

_launchURL() async {
  const url = 'https://www.vezeeta.com/ar/%D8%AF%D9%83%D8%AA%D9%88%D8%B1/%D8%A7%D9%88%D8%B1%D8%A7%D9%85/%D9%85%D8%B5%D8%B1';
  final uri = Uri.parse(url);
  if (await canLaunchUrl(uri)) {
    await launchUrl(uri);
  } else {
    throw 'Could not launch $url';
  }
}
_cairo() async {
  const url = 'https://www.vezeeta.com/ar/%D8%AF%D9%83%D8%AA%D9%88%D8%B1/%D8%A7%D9%88%D8%B1%D8%A7%D9%85/%D8%A7%D9%84%D9%82%D8%A7%D9%87%D8%B1%D8%A9';
  final uri = Uri.parse(url);
  if (await canLaunchUrl(uri)) {
    await launchUrl(uri);
  } else {
    throw 'Could not launch $url';
  }
}
_giza() async {
  const url = 'https://www.vezeeta.com/ar/%D8%AF%D9%83%D8%AA%D9%88%D8%B1/%D8%A7%D9%88%D8%B1%D8%A7%D9%85/%D8%A7%D9%84%D8%AC%D9%8A%D8%B2%D8%A9';
  final uri = Uri.parse(url);
  if (await canLaunchUrl(uri)) {
    await launchUrl(uri);
  } else {
    throw 'Could not launch $url';
  }
}
_alexandria() async {
  const url = 'https://www.vezeeta.com/ar/%D8%AF%D9%83%D8%AA%D9%88%D8%B1/%D8%A7%D9%88%D8%B1%D8%A7%D9%85/%D8%A7%D9%84%D8%A5%D8%B3%D9%83%D9%86%D8%AF%D8%B1%D9%8A%D8%A9';
  final uri = Uri.parse(url);
  if (await canLaunchUrl(uri)) {
    await launchUrl(uri);
  } else {
    throw 'Could not launch $url';
  }
}
_nourth() async {
  const url = 'https://www.vezeeta.com/ar/%D8%AF%D9%83%D8%AA%D9%88%D8%B1/%D8%A7%D9%88%D8%B1%D8%A7%D9%85/%D8%A7%D9%84%D8%B3%D8%A7%D8%AD%D9%84-%D8%A7%D9%84%D8%B4%D9%85%D8%A7%D9%84%D9%8A';
  final uri = Uri.parse(url);
  if (await canLaunchUrl(uri)) {
    await launchUrl(uri);
  } else {
    throw 'Could not launch $url';
  }
}
_qalyubia() async {
  const url = 'https://www.vezeeta.com/ar/%D8%AF%D9%83%D8%AA%D9%88%D8%B1/%D8%A7%D9%88%D8%B1%D8%A7%D9%85/%D8%A7%D9%84%D9%82%D9%84%D9%8A%D9%88%D8%A8%D9%8A%D8%A9';
  final uri = Uri.parse(url);
  if (await canLaunchUrl(uri)) {
    await launchUrl(uri);
  } else {
    throw 'Could not launch $url';
  }
}
_gharbiya() async {
  const url = 'https://www.vezeeta.com/ar/%D8%AF%D9%83%D8%AA%D9%88%D8%B1/%D8%A7%D9%88%D8%B1%D8%A7%D9%85/%D8%A7%D9%84%D8%BA%D8%B1%D8%A8%D9%8A%D8%A9';
  final uri = Uri.parse(url);
  if (await canLaunchUrl(uri)) {
    await launchUrl(uri);
  } else {
    throw 'Could not launch $url';
  }
}
_menoufia() async {
  const url = 'https://www.vezeeta.com/ar/%D8%AF%D9%83%D8%AA%D9%88%D8%B1/%D8%A7%D9%88%D8%B1%D8%A7%D9%85/%D8%A7%D9%84%D9%85%D9%86%D9%88%D9%81%D9%8A%D8%A9';
  final uri = Uri.parse(url);
  if (await canLaunchUrl(uri)) {
    await launchUrl(uri);
  } else {
    throw 'Could not launch $url';
  }
}
_fayoum() async {
  const url = 'https://www.vezeeta.com/ar/%D8%AF%D9%83%D8%AA%D9%88%D8%B1/%D8%A7%D9%88%D8%B1%D8%A7%D9%85/%D8%A7%D9%84%D9%81%D9%8A%D9%88%D9%85';
  final uri = Uri.parse(url);
  if (await canLaunchUrl(uri)) {
    await launchUrl(uri);
  } else {
    throw 'Could not launch $url';
  }
}
_dakahlia() async {
  const url = 'https://www.vezeeta.com/ar/%D8%AF%D9%83%D8%AA%D9%88%D8%B1/%D8%A7%D9%88%D8%B1%D8%A7%D9%85/%D8%A7%D9%84%D8%AF%D9%82%D9%87%D9%84%D9%8A%D8%A9';
  final uri = Uri.parse(url);
  if (await canLaunchUrl(uri)) {
    await launchUrl(uri);
  } else {
    throw 'Could not launch $url';
  }
}
_shargia() async {
  const url = 'https://www.vezeeta.com/ar/%D8%AF%D9%83%D8%AA%D9%88%D8%B1/%D8%A7%D9%88%D8%B1%D8%A7%D9%85/%D8%A7%D9%84%D8%B4%D8%B1%D9%82%D9%8A%D8%A9';
  final uri = Uri.parse(url);
  if (await canLaunchUrl(uri)) {
    await launchUrl(uri);
  } else {
    throw 'Could not launch $url';
  }
}
_beheira() async {
  const url = 'https://www.vezeeta.com/ar/%D8%AF%D9%83%D8%AA%D9%88%D8%B1/%D8%A7%D9%88%D8%B1%D8%A7%D9%85/%D8%A7%D9%84%D8%A8%D8%AD%D9%8A%D8%B1%D8%A9';
  final uri = Uri.parse(url);
  if (await canLaunchUrl(uri)) {
    await launchUrl(uri);
  } else {
    throw 'Could not launch $url';
  }
}
_damiette() async {
  const url = 'https://www.vezeeta.com/ar/%D8%AF%D9%83%D8%AA%D9%88%D8%B1/%D8%A7%D9%88%D8%B1%D8%A7%D9%85/%D8%AF%D9%85%D9%8A%D8%A7%D8%B7';
  final uri = Uri.parse(url);
  if (await canLaunchUrl(uri)) {
    await launchUrl(uri);
  } else {
    throw 'Could not launch $url';
  }
}
_matrouh() async {
  const url = 'https://www.vezeeta.com/ar/%D8%AF%D9%83%D8%AA%D9%88%D8%B1/%D8%A7%D9%88%D8%B1%D8%A7%D9%85/%D9%85%D8%B7%D8%B1%D9%88%D8%AD';
  final uri = Uri.parse(url);
  if (await canLaunchUrl(uri)) {
    await launchUrl(uri);
  } else {
    throw 'Could not launch $url';
  }
}
_assiut() async {
  const url = 'https://www.vezeeta.com/ar/%D8%AF%D9%83%D8%AA%D9%88%D8%B1/%D8%A7%D9%88%D8%B1%D8%A7%D9%85/%D8%A3%D8%B3%D9%8A%D9%88%D8%B7';
  final uri = Uri.parse(url);
  if (await canLaunchUrl(uri)) {
    await launchUrl(uri);
  } else {
    throw 'Could not launch $url';
  }
}
_ismailia() async {
  const url = 'https://www.vezeeta.com/ar/%D8%AF%D9%83%D8%AA%D9%88%D8%B1/%D8%A7%D9%88%D8%B1%D8%A7%D9%85/%D8%A7%D9%84%D8%A5%D8%B3%D9%85%D8%A7%D8%B9%D9%8A%D9%84%D9%8A%D8%A9';
  final uri = Uri.parse(url);
  if (await canLaunchUrl(uri)) {
    await launchUrl(uri);
  } else {
    throw 'Could not launch $url';
  }
}
_hurghada() async {
  const url = 'https://www.vezeeta.com/ar/%D8%AF%D9%83%D8%AA%D9%88%D8%B1/%D8%A7%D9%88%D8%B1%D8%A7%D9%85/%D8%A7%D9%84%D8%BA%D8%B1%D8%AF%D9%82%D8%A9';
  final uri = Uri.parse(url);
  if (await canLaunchUrl(uri)) {
    await launchUrl(uri);
  } else {
    throw 'Could not launch $url';
  }
}
_sharm() async {
  const url = 'https://www.vezeeta.com/ar/%D8%AF%D9%83%D8%AA%D9%88%D8%B1/%D8%A7%D9%88%D8%B1%D8%A7%D9%85/%D8%B4%D8%B1%D9%85-%D8%A7%D9%84%D8%B4%D9%8A%D8%AE';
  final uri = Uri.parse(url);
  if (await canLaunchUrl(uri)) {
    await launchUrl(uri);
  } else {
    throw 'Could not launch $url';
  }
}
_portSaid() async {
  const url = 'https://www.vezeeta.com/ar/%D8%AF%D9%83%D8%AA%D9%88%D8%B1/%D8%A7%D9%88%D8%B1%D8%A7%D9%85/%D8%A8%D9%88%D8%B1%D8%B3%D8%B9%D9%8A%D8%AF';
  final uri = Uri.parse(url);
  if (await canLaunchUrl(uri)) {
    await launchUrl(uri);
  } else {
    throw 'Could not launch $url';
  }
}
_suez() async {
  const url = 'https://www.vezeeta.com/ar/%D8%AF%D9%83%D8%AA%D9%88%D8%B1/%D8%A7%D9%88%D8%B1%D8%A7%D9%85/%D8%A7%D9%84%D8%B3%D9%88%D9%8A%D8%B3';
  final uri = Uri.parse(url);
  if (await canLaunchUrl(uri)) {
    await launchUrl(uri);
  } else {
    throw 'Could not launch $url';
  }
}
_sohag() async {
  const url = 'https://www.vezeeta.com/ar/%D8%AF%D9%83%D8%AA%D9%88%D8%B1/%D8%A7%D9%88%D8%B1%D8%A7%D9%85/%D8%B3%D9%88%D9%87%D8%A7%D8%AC';
  final uri = Uri.parse(url);
  if (await canLaunchUrl(uri)) {
    await launchUrl(uri);
  } else {
    throw 'Could not launch $url';
  }
}
_minya() async {
  const url = 'https://www.vezeeta.com/ar/%D8%AF%D9%83%D8%AA%D9%88%D8%B1/%D8%A7%D9%88%D8%B1%D8%A7%D9%85/%D8%A7%D9%84%D9%85%D9%86%D9%8A%D8%A7';
  final uri = Uri.parse(url);
  if (await canLaunchUrl(uri)) {
    await launchUrl(uri);
  } else {
    throw 'Could not launch $url';
  }
}
_kafr() async {
  const url = 'https://www.vezeeta.com/ar/%D8%AF%D9%83%D8%AA%D9%88%D8%B1/%D8%A7%D9%88%D8%B1%D8%A7%D9%85/%D9%83%D9%81%D8%B1-%D8%A7%D9%84%D8%B4%D9%8A%D8%AE';
  final uri = Uri.parse(url);
  if (await canLaunchUrl(uri)) {
    await launchUrl(uri);
  } else {
    throw 'Could not launch $url';
  }
}
_luxor() async {
  const url = 'https://www.vezeeta.com/ar/%D8%AF%D9%83%D8%AA%D9%88%D8%B1/%D8%A7%D9%88%D8%B1%D8%A7%D9%85/%D8%A7%D9%84%D8%A7%D9%82%D8%B5%D8%B1';
  final uri = Uri.parse(url);
  if (await canLaunchUrl(uri)) {
    await launchUrl(uri);
  } else {
    throw 'Could not launch $url';
  }
}
_qena() async {
  const url = 'https://www.vezeeta.com/ar/%D8%AF%D9%83%D8%AA%D9%88%D8%B1/%D8%A7%D9%88%D8%B1%D8%A7%D9%85/%D9%82%D9%86%D8%A7';
  final uri = Uri.parse(url);
  if (await canLaunchUrl(uri)) {
    await launchUrl(uri);
  } else {
    throw 'Could not launch $url';
  }
}
_aswan() async {
  const url = 'https://www.vezeeta.com/ar/%D8%AF%D9%83%D8%AA%D9%88%D8%B1/%D8%A7%D9%88%D8%B1%D8%A7%D9%85/%D8%A3%D8%B3%D9%88%D8%A7%D9%86';
  final uri = Uri.parse(url);
  if (await canLaunchUrl(uri)) {
    await launchUrl(uri);
  } else {
    throw 'Could not launch $url';
  }
}
_beniSuef() async {
  const url = 'https://www.vezeeta.com/ar/%D8%AF%D9%83%D8%AA%D9%88%D8%B1/%D8%A7%D9%88%D8%B1%D8%A7%D9%85/%D8%A8%D9%86%D9%8A-%D8%B3%D9%88%D9%8A%D9%81';
  final uri = Uri.parse(url);
  if (await canLaunchUrl(uri)) {
    await launchUrl(uri);
  } else {
    throw 'Could not launch $url';
  }
}