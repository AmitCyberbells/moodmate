import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:moodmate/domain/entities/pet_entity.dart';
import 'package:moodmate/domain/entities/user_entity.dart';
import 'package:moodmate/domain/usecases/auth_usecase.dart';
import 'package:moodmate/domain/usecases/pet_usecase.dart';
import 'package:moodmate/presentation/screens/main/second_main_page.dart';
import 'package:page_transition/page_transition.dart';
import 'package:shared_preferences/shared_preferences.dart';

class PetSelectionProvider extends ChangeNotifier {
  final PetUsecase petUsecase;
  final AuthUsecase authUseCase;
  List<PetEntity>? _pets;
  bool _isLoading = false;
  List<PetEntity>? get pets => _pets;
  bool get isLoading => _isLoading;
  int _currentIndex = 0;
  int get currentIndex => _currentIndex;
  UserEntity? _user;
  UserEntity? get user => _user;

  PetSelectionProvider({required this.petUsecase, required this.authUseCase}) {
    getAllPets();
  }

  Future<void> getAllPets() async {
    _isLoading = true;
    try {
      _pets = await petUsecase.getAllPets();
      if (_pets == null) {
        Fluttertoast.showToast(msg: "There is no pets in the Database.");
      }
    } catch (e) {
      print("failed to get pets Because Of $e");
      Fluttertoast.showToast(msg: "failed to get pets Because Of $e");
    } finally {
      _isLoading = false;
    }
    notifyListeners();
  }

  void updateIndex(int newIndex) {
    _currentIndex = newIndex;
    notifyListeners();
  }

  void leftButtonPressed() {
    int index = _currentIndex;
    if (index == 0) {
      index = _pets!.length - 1;
    } else {
      index -= 1;
    }
    updateIndex(index);
    notifyListeners();
  }

  void rightButtonPressed() {
    int index = _currentIndex;
    if (index == _pets!.length - 1) {
      index = 0;
    } else {
      index += 1;
    }
    updateIndex(index);
    notifyListeners();
  }

  pop(BuildContext context) {
    Navigator.pushAndRemoveUntil(
      context,
      PageTransition(
        duration: Duration(milliseconds: 700),
        type: PageTransitionType.rightToLeft,
        child: SecondMainPage(),
      ),
      (Route<dynamic> route) => false,
    );
  }

  Future<void> petSelected(BuildContext context) async {
    try {
      final prefs = await SharedPreferences.getInstance();
      final userId = prefs.getString("id");

      if (userId == null) {
        Fluttertoast.showToast(msg: "User ID not found. Please login again.");
        return;
      }

      if (_pets == null || _pets!.isEmpty) {
        Fluttertoast.showToast(msg: "No pets available to select.");
        return;
      }

      if (_currentIndex < 0 || _currentIndex >= _pets!.length) {
        Fluttertoast.showToast(msg: "Invalid pet selection.");
        return;
      }

      final petId = _pets![_currentIndex].id;

      if (petId.isEmpty) {
        Fluttertoast.showToast(msg: "Selected pet has no ID.");
        return;
      }

      _user = await authUseCase.selectPet(userId, petId);

      if (_user != null) {
        await prefs.setString("petId", petId);
        Navigator.pushAndRemoveUntil(
          context,
          PageTransition(
            duration: Duration(milliseconds: 700),
            type: PageTransitionType.rightToLeft,
            child: SecondMainPage(),
          ),
          (Route<dynamic> route) => false,
        );
      } else {
        Fluttertoast.showToast(msg: "Pet selection failed: User not updated.");
      }
    } catch (e) {
      Fluttertoast.showToast(msg: "Pet Selection failed because of $e");
    }
  }
}
