import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HomeProvider extends ChangeNotifier {
  List<Map<String, dynamic>> data = [];
  bool isLoading = true;

  HomeProvider() {
    _initData();
  }

  Future<void> _initData() async {
    final prefs = await SharedPreferences.getInstance();
    final username = prefs.getString("username");
    final email = prefs.getString("email");
    final gender = prefs.getString("gender");
    final mobileNo = prefs.getString("mobileNo");
    final id = prefs.getString("id");
    data.add({
      "username": username,
      "email": email,
      "gender": gender,
      "mobileNo": mobileNo,
      "id": id,
    });
    isLoading = false;
    notifyListeners();
  }
}
