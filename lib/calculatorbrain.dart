import 'dart:math';

class Calculatorbrain {

  Calculatorbrain({required this.height,required this.weight});

  final int height;
  final int weight;
  late double _bmi;

  String calbmi(){
    _bmi = weight / pow((height/100), 2);
    return _bmi.toStringAsFixed(1);
  }

  String suggest(){
    if(_bmi >= 25)
      return "Your overweight!! exercise";
    else if(_bmi > 18 && _bmi < 25)
      return "Your Normal weight Good job";
    return "Your underweight! Eat more";
  }

  String res(){
    if(_bmi >= 25)
      return "Overweight";
    else if(_bmi > 18 && _bmi < 25)
      return "Normal";
    return "UnderWeight";
  }

}