import 'package:flutter/material.dart';

class Presser extends ChangeNotifier {
  int presser = 0;

  void increment() {
    presser++;
    notifyListeners();
  }

  void decrement() {
    presser--;
    notifyListeners();
  }
}

class Date extends ChangeNotifier {
  String whatsDate = 2023.toString();
  void printDate() {
    whatsDate = 'Date given  20/06/2023';
    notifyListeners();
  }

  void clearDate() {
    whatsDate = 'Date cleared';
    notifyListeners();
  }
}
