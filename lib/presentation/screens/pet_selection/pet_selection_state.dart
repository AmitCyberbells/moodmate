import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:moodmate/domain/entities/pet_entity.dart';
import 'package:moodmate/domain/usecases/pet_usecase.dart';
import 'package:moodmate/presentation/screens/main/second_main_page.dart';
import 'package:page_transition/page_transition.dart';

class PetSelectionProvider extends ChangeNotifier {
  final PetUsecase petUsecase;

  List<PetEntity>? _pets;
  bool _isLoading = false;
  List<PetEntity>? get pets => _pets;
  bool get isLoading => _isLoading;
  int _currentIndex = 0;
  int get currentIndex => _currentIndex;

  PetSelectionProvider({required this.petUsecase}) {
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

  void pop(BuildContext context) {
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

  void petSelected(BuildContext context) {
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
}
