import 'package:flutter/material.dart';

class IncrementProvider extends ChangeNotifier {

  int value1 = 0;
  int value2 = 0;
  int value3=0;
  int sum = 0;

  increment1() {
    value1++;
    _calculateSum();
  }

  decrement1(){
    value1--;
    _calculateSum();
  }

  increment2() {
    value2++;
    _calculateSum();
  }

  decrement2(){
    value2--;
    _calculateSum();
  }
  increment3() {
    value3++;
    _calculateSum();
  }

  decrement3(){
    value3--;
    _calculateSum();
  }

  _calculateSum(){
    sum = value1+value2+value3;
    notifyListeners();
  }
}