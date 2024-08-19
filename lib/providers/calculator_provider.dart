import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';

class CalculatorProvider extends ChangeNotifier {
  String _userInput = '';
  String _answer = '';

  String get userInput => _userInput;
  String get answer => _answer;

  void appendInput(String input) {
    _userInput += input;
    notifyListeners();
  }

  void deleteInput() {
    if (_userInput.isNotEmpty) {
      _userInput = _userInput.substring(0, _userInput.length - 1);
      notifyListeners();
    }
  }

  void clearInput() {
    _userInput = '';
    _answer = '0';
    notifyListeners();
  }

  void calculate() {
    String finalUserInput = _userInput.replaceAll('x', '*');
    Parser p = Parser();
    Expression exp = p.parse(finalUserInput);
    ContextModel cm = ContextModel();
    double eval = exp.evaluate(EvaluationType.REAL, cm);
    _answer = eval.toString();
    notifyListeners();
  }
}
