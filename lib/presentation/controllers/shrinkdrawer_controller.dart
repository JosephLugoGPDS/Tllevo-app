import 'package:flutter/material.dart';

class ShrinkDrawerController extends ChangeNotifier {
  int _currentIndex = 0;
  void handleActive(int index) {
    this._currentIndex = index;
    notifyListeners();
  }
  int get currentIndex => this._currentIndex;
}