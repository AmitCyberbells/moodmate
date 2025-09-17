import 'package:moodmate/domain/entities/user_entity.dart';

abstract class AuthRepository {
  Future<UserEntity> login(String email, String password);
  Future<UserEntity> signup(String username, String email, String password);
  Future<void> logout(String token);
}
