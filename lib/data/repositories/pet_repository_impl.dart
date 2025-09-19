import 'package:moodmate/data/datasources/pet_remote_datasource.dart';
import 'package:moodmate/domain/entities/pet_entity.dart';
import 'package:moodmate/domain/repositories/pet_repository.dart';

class PetRepositoryImpl implements PetRepository {
  final PetRemoteDatasource remoteDataSource;

  PetRepositoryImpl(this.remoteDataSource);

  @override
  Future<PetEntity> getPetById(String id) {
    return remoteDataSource.getPetById(id);
  }

  @override
  Future<List<PetEntity>> getAllPets() {
    return remoteDataSource.getAllPets();
  }
}
