import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'icon_card.dart';
import 'useable_card.dart';
import 'constant_card.dart';
import 'RoundiconBotton.dart';
import 'result_page.dart';
import 'Calcolater_brain.dart';

enum Gender {
  male,
  female,
}

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender selectgender;
  int height = 170;
  int waight = 50;
  int age = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Center(child: Text('BMI CALCULATOR')),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Row(
              children: <Widget>[
                Expanded(
                    child: UseableCard(
                  onpress: () {
                    setState(() {
                      selectgender = Gender.male;
                    });
                  },
                  colour: selectgender == Gender.male
                      ? KActivecolorcard
                      : KInactivecolorcard,
                  cardchild: Iconcontant(
                    textchild: ('MALE'),
                    contanticon: FontAwesomeIcons.mars,
                  ),
                )),
                Expanded(
                    child: UseableCard(
                  onpress: () {
                    setState(() {
                      selectgender = Gender.female;
                    });
                  },
                  colour: selectgender == Gender.female
                      ? KActivecolorcard
                      : KInactivecolorcard,
                  cardchild: Iconcontant(
                    textchild: ('FEMALE'),
                    contanticon: FontAwesomeIcons.venus,
                  ),
                )),
              ],
            ),
            Expanded(
                child: UseableCard(
              colour: KActivecolorcard,
              cardchild: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'HEIGHT',
                    style: KLabletextstyle,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: <Widget>[
                      Text(
                        height.toString(),
                        style: KNumbertext,
                      ),
                      Text(
                        'cm',
                        style: KLabletextstyle,
                      ),
                    ],
                  ),
                  SliderTheme(
                    data: SliderTheme.of(context).copyWith(
                      thumbShape: RoundSliderThumbShape(enabledThumbRadius: 15),
                      overlayShape:
                          RoundSliderOverlayShape(overlayRadius: 30.0),
                      activeTrackColor: Colors.white,
                      thumbColor: Color(0xFFEB1555),
                      overlayColor: Color(0x29EB1555),
                    ),
                    child: Slider(
                      value: height.toDouble(),
                      min: 120.0,
                      max: 220.0,
                      inactiveColor: Color(0XFF8D8E98),
                      onChanged: (double newvalue) {
                        setState(() {
                          height = newvalue.round();
                        });
                      },
                    ),
                  )
                ],
              ),
            )),
            Expanded(
                child: Row(
              children: <Widget>[
                Expanded(
                    child: UseableCard(
                  colour: KActivecolorcard,
                  cardchild: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        'WEIGHT',
                        style: KLabletextstyle,
                      ),
                      Text(
                        waight.toString(),
                        style: KNumbertext,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          RoundiconBotton(
                            icon: FontAwesomeIcons.minus,
                            onpress: (){
                              setState(() {
                                waight--;
                              });
                            },

                          ),
                          SizedBox(
                            width: 10,
                          ),
                          RoundiconBotton(
                            icon: FontAwesomeIcons.plus,
                            onpress: (){
                              setState(() {
                                waight++;
                              });
                            },
                          ),
                        ],
                      )
                    ],
                  ),
                )),
                Expanded(
                    child: UseableCard(
                  colour: KActivecolorcard,
                  cardchild: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        'AGE',
                        style: KLabletextstyle,
                      ),
                      Text(
                        age.toString(),
                        style: KNumbertext,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          RoundiconBotton(
                            icon: FontAwesomeIcons.minus,
                            onpress: (){
                              setState(() {
                                age--;
                              });
                            },


                          ),
                          SizedBox(
                            width: 10,
                          ),
                          RoundiconBotton(
                            icon: FontAwesomeIcons.plus,
                            onpress: (){
                              setState(() {
                                age++;
                              });
                            },

                          ),
                        ],
                      )
                    ],
                  ),
                )),
              ],
            )),
            GestureDetector(
              onTap: (){
                CalculaterBrain calc= CalculaterBrain(height: height,weight: waight);
                calc.calculateBMI();
                calc.getResult();
                calc.getInterpretation();
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Results(
                      resultText:calc.getResult() ,
                      bmiresult: calc.calculateBMI() ,
                      interpretation: calc.getInterpretation(),
                    )),);
              },
              child: Container(
                color: Colors.pinkAccent,
                margin: EdgeInsets.only(top: 10.0),
                width: double.infinity,
                height: KBottomhieght,
                child: Center(
                    child: Text(
                  "Calculate",
                  style: TextStyle(fontWeight: FontWeight.bold,fontSize:20 ),
                )),

              ),
            )
          ],
        ));
  }
}

