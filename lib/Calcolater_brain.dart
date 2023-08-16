
import 'dart:math';



class CalculaterBrain{

  CalculaterBrain({this.weight,this.height,});


  final int height;
  final int weight;
  double _bmi;

  String calculateBMI(){
     _bmi=weight/ pow(height/100, 2);
    return _bmi.toStringAsFixed(1);
  }
  String getResult() {
    print(_bmi);
    if (_bmi >= 25){
      return 'Overwaight';

    } else if(_bmi > 18.5){
      return 'NOrmal';
    } else {
      return 'Underwaighted';
    };
  }
  String getInterpretation(){

    if (_bmi >= 25){
      return 'you have higher then normal body waight : you have to excercise';
    }
    else if(_bmi > 18.5){
      return 'you have a normall waight : good job';
    }
    else {
      return 'you have low waight then normal : please eat more';
    };

  }
}