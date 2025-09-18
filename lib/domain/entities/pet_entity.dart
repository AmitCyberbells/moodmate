class PetEntity {
  final String id;
  final String petName;
  final String petDescription;
  final String petImage;
  final DateTime createdAt;
  final DateTime updatedAt;

  PetEntity({
    required this.id,
    required this.petName,
    required this.petDescription,
    required this.petImage,
    required this.createdAt,
    required this.updatedAt,
  });
}
