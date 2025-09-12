import 'package:flutter/material.dart';

class CaretoolProvider extends ChangeNotifier {
  bool _isQuickRelief = false;

  bool get isQuickRelief => _isQuickRelief;

  void toggleQuickRelief(bool value) {
    _isQuickRelief = value;
    notifyListeners();
  }
}
