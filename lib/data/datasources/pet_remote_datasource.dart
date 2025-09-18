import 'dart:convert';

import 'package:moodmate/core/constants/api_constants.dart';
import 'package:moodmate/data/models/pet_model.dart';
import 'package:http/http.dart' as http;

class PetRemoteDatasource {
  Future<List<PetModel>> getAllPets() async {
    final response = await http.get(Uri.parse(ApiConstants.getAllPets));
    print("Data : ${response.body}");

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body); // Map<String, dynamic>
      final List<dynamic> petsJson = data["data"]; // This is the list

      // Map each JSON item to PetModel
      return petsJson.map((e) => PetModel.fromJson(e)).toList();
    } else if (response.statusCode == 400) {
      final data = jsonDecode(response.body);
      String message = data["message"];
      throw Exception(message);
    } else {
      throw Exception("Fetching All Pets Failed.");
    }
  }

  Future<PetModel> getPetsById(String id) async {
    final response = await http.post(
      Uri.parse(ApiConstants.getByIdPets),
      body: {"id": id},
    );
    final data = jsonDecode(response.body);
    if (response.statusCode == 200) {
      return PetModel.fromJson(data["data"]);
    } else if (response.statusCode == 400) {
      final data = jsonDecode(response.body);
      String message = data["message"];
      throw Exception(message);
    } else {
      throw Exception("Fetching Pet By Id Failed.");
    }
  }
}
