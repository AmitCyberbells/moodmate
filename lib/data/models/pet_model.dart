import 'package:moodmate/domain/entities/pet_entity.dart';

class PetModel extends PetEntity {
  PetModel({
    required super.id,
    required super.petName,
    required super.petDescription,
    required super.petImage,
    required super.createdAt,
    required super.updatedAt,
  });

  factory PetModel.fromJson(Map<String, dynamic> json) {
    return PetModel(
      id: json['_id'],
      petName: json['petName'],
      petDescription: json['petDescription'],
      petImage: json['petImage'],
      createdAt: DateTime.parse(json['createdAt']),
      updatedAt: DateTime.parse(json['updatedAt']),
    );
  }

  /// Convert to JSON
  Map<String, dynamic> toJson() {
    return {
      "_id": id,
      "petName": petName,
      "petDescription": petDescription,
      "petImage": petImage,
      "createdAt": createdAt.toIso8601String(),
      "updatedAt": updatedAt.toIso8601String(),
    };
  }
}
