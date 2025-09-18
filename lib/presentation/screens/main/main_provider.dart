import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:moodmate/domain/entities/pet_entity.dart';
import 'package:moodmate/domain/usecases/pet_usecase.dart';
import 'package:shared_preferences/shared_preferences.dart';

class MainProvider extends ChangeNotifier {
  final PetUsecase petUsecase;

  List<Map<String, dynamic>> data = [];
  bool _isLoading = true;
  bool get isLoading => _isLoading;
  bool _isLoadingUserData = true;
  bool get isLoadingUserData => _isLoadingUserData;
  PetEntity? _selectedPet;
  PetEntity? get selectedPet => _selectedPet;

  MainProvider({required this.petUsecase}) {
    _initData();
  }

  Future<void> _initData() async {
    _isLoadingUserData = true;
    try {
      final prefs = await SharedPreferences.getInstance();
      final username = prefs.getString("username");
      final email = prefs.getString("email");
      final gender = prefs.getString("gender");
      final mobileNo = prefs.getString("mobileNo");
      final id = prefs.getString("id");
      final createdAt = prefs.getString("createdAt");
      final updatedAt = prefs.getString("updatedAt");
      data.add({
        "username": username,
        "email": email,
        "gender": gender,
        "mobileNo": mobileNo,
        "id": id,
        "createdAt": createdAt,
        "updatedAt": updatedAt,
      });
    } catch (e) {
      Fluttertoast.showToast(msg: "failed to add User Data to Shared Prefs $e");
    } finally {
      _isLoadingUserData = false;
    }
    notifyListeners();
  }

  Future<void> getPetById(String id) async {
    _isLoading = true;
    try {
      _selectedPet = await petUsecase.getPetById(id);
      if (_selectedPet == null) {
        Fluttertoast.showToast(msg: "There is no pet in the Database.");
      }
    } catch (e) {
      print("failed to get pet Because Of $e");
      Fluttertoast.showToast(msg: "failed to get pet Because Of $e");
    } finally {
      _isLoading = false;
    }
    notifyListeners();
  }
}
