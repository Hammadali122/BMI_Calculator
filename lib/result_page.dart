import 'package:flutter/material.dart';
import 'constant_card.dart';
import 'useable_card.dart';
import 'input_card.dart';



class Results extends StatelessWidget {

  Results({@required this.bmiresult,@required this.interpretation,@required this.resultText});

final String bmiresult;
final String resultText;
final String interpretation;

@override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text('BMI'),
        backgroundColor: KActivecolorcard,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Center(
              child: Text('YOUR RESULT',
              style: ktextstyle,),
            ),
          ),
          Expanded(
            flex: 5,
              child:
          UseableCard(
            colour: KActivecolorcard,
            cardchild: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Text(resultText.toUpperCase(),
                style: kbmitextstyle,),
                Text(bmiresult,style: kresultstyle),
                Text(
                    interpretation,
                    textAlign: TextAlign.center,
                    style:kbodytextstyle),
              ],
            ),
          ) ),
          GestureDetector(
            onTap:(){ Navigator.pop(context,
            MaterialPageRoute(builder: (context) => InputPage(

            )));},
            child: Container(
              color: Colors.pinkAccent,
              margin: EdgeInsets.only(top: 10.0),
              width: double.infinity,
              height: KBottomhieght,
              child: Center(
                  child: Text(
                    "RE-Calculate",
                    style: TextStyle(fontWeight: FontWeight.bold,fontSize:20 ),
                  )),

            ),
          ),

        ],
      ),


    );

  }
}
