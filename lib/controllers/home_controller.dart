import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  TextEditingController heightController = TextEditingController();
  TextEditingController weightController = TextEditingController();
  String _textResult = '';
  String get textResult => _textResult;

  double _result = 0;
  double get result => _result;

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();

  }

  void calculateBMI(){
    double height = double.parse(heightController.text);
    double weight = double.parse(weightController.text);
    _result = double.parse((weight/(height * height)).toStringAsFixed(2));
    if(_result > 25){
      _textResult = 'You\'re over weight';
    } else if (_result >= 18.5 && _result <= 25){
      _textResult = 'You have normal weight';
    }else{
      _textResult = 'You\'re under weight';
    }
    print(_textResult);
    update(['home']);
  }


  
}