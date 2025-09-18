import '../entities/user_entity.dart';
import '../repositories/auth_repository.dart';

class AuthUsecase {
  final AuthRepository repository;

  AuthUsecase(this.repository);

  Future<UserEntity> login(String email, String password) {
    return repository.login(email, password);
  }

  Future<UserEntity> signup(String username, String email, String password) {
    return repository.signup(username, email, password);
  }

  Future<void> logout(String token) {
    return repository.logout(token);
  }
}
