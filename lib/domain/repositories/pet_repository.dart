import 'package:moodmate/domain/entities/pet_entity.dart';

abstract class PetRepository {
  Future<List<PetEntity>> getAllPets();
  Future<PetEntity> getPetById(String id);
}
