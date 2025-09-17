import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';
import '../../core/constants/api_constants.dart';
import '../models/user_model.dart';

class AuthRemoteDataSource {
  Future<UserModel> login(String email, String password) async {
    final response = await http.post(
      Uri.parse(ApiConstants.login),
      body: {"email": email, "password": password},
    );
    final data = jsonDecode(response.body);
    if (response.statusCode == 200) {
      final prefs = await SharedPreferences.getInstance();
      await prefs.setString("token", data["token"]);
      return UserModel.fromJson(data["user"]);
    } else if (response.statusCode == 400) {
      final data = jsonDecode(response.body);
      String message = data["message"];
      throw Exception(message);
    } else {
      throw Exception("Login failed");
    }
  }

  Future<UserModel> signup(
    String username,
    String email,
    String password,
  ) async {
    final response = await http.post(
      Uri.parse(ApiConstants.signup),
      body: {"username": username, "email": email, "password": password},
    );

    if (response.statusCode == 200) {
      return UserModel.fromJson(jsonDecode(response.body));
    } else if (response.statusCode == 400) {
      final data = jsonDecode(response.body);
      String message = data["message"];
      throw Exception(message);
    } else {
      throw Exception("Signup failed");
    }
  }

  Future<void> logout(String token) async {
    final prefs = await SharedPreferences.getInstance();
    final token = prefs.getString("token");

    final response = await http.post(
      Uri.parse(ApiConstants.logout),
      headers: {
        "Authorization": "Bearer $token",
        "Content-Type": "application/json",
      },
    );

    if (response.statusCode == 200) {
      await prefs.clear();
    } else {
      final data = jsonDecode(response.body);
      String message = data["message"] ?? "Logout failed";
      throw Exception(message);
    }
  }
}
