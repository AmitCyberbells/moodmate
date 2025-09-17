import 'package:flutter/material.dart';

class MainBottomNavigationState extends ChangeNotifier {
  int _currentIndex = 0;

  int get currentIndex => _currentIndex;

  void setIndex(int index) {
    _currentIndex = index;
    notifyListeners();
  }

  Future<bool> onWillPop() async {
    if (_currentIndex != 0) {
      _currentIndex = 0;
      notifyListeners();
      return false;
    }
    return true;
  }
}
