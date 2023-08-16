import 'package:flutter/material.dart';
import 'input_card.dart';
void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
          primaryColor: Color(0xFF0A0E21),
          scaffoldBackgroundColor: Color(0xFF0A0E21)
      ),
      home: InputPage(),
    );
  }
}






//if (inputgender == Gender.male) {
//if(malecardcolor == inactivecolorcard){
//malecardcolor = activecolorcard;
//femalecardcolor=inactivecolorcard;
//} else {malecardcolor = inactivecolorcard;}}
//if (inputgender == Gender.female) {
//if(femalecardcolor == inactivecolorcard){
//femalecardcolor = activecolorcard;
//malecardcolor=inactivecolorcard;} else {femalecardcolor = inactivecolorcard;}}



//cardchild:(Column(children: <Widget>[
//Icon(FontAwesomeIcons.mars,
//size: 20,),
//SizedBox(
////height: 15.0,),
////Text('Man',style: TextStyle(fontSize: 20,
////color:Textcolor),)],))
