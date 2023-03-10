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
