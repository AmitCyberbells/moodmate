import 'package:moodmate/domain/entities/pet_entity.dart';
import 'package:moodmate/domain/repositories/pet_repository.dart';

class PetUsecase {
  final PetRepository repository;
  PetUsecase(this.repository);

  Future<List<PetEntity>> getAllPets() {
    return repository.getAllPets();
  }

  Future<PetEntity> getPetById(String id) {
    return repository.getPetById(id);
  }
}
