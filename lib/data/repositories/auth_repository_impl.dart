import '../../domain/entities/user_entity.dart';
import '../../domain/repositories/auth_repository.dart';
import '../datasources/auth_remote_datasource.dart';

class AuthRepositoryImpl implements AuthRepository {
  final AuthRemoteDataSource remoteDataSource;

  AuthRepositoryImpl(this.remoteDataSource);

  @override
  Future<UserEntity> login(String email, String password) {
    return remoteDataSource.login(email, password);
  }

  @override
  Future<UserEntity> signup(String username, String email, String password) {
    return remoteDataSource.signup(username, email, password);
  }

  @override
  Future<void> logout(String token) {
    return remoteDataSource.logout(token);
  }

  @override
  Future<UserEntity> selectPet(String userId, String petId) {
    return remoteDataSource.selectPet(userId: userId, petId: petId);
  }
}
