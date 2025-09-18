import '../../domain/entities/user_entity.dart';

class UserModel extends UserEntity {
  UserModel({
    required super.id,
    required super.email,
    required super.username,
    super.mobileNo,
    super.petId,
    super.gender,
    required super.createdAt,
    required super.updatedAt,
  });

  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
      id: json["_id"],
      petId: json["petId"] ?? '',
      email: json["email"],
      username: json["username"],
      mobileNo: json["mobileNo"] ?? '',
      gender: json["gender"] ?? '',
      createdAt: DateTime.tryParse(json["createdAt"] ?? '') ?? DateTime.now(),
      updatedAt: DateTime.tryParse(json["updatedAt"] ?? '') ?? DateTime.now(),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      "petId": petId,
      "email": email,
      "username": username,
      "mobileNo": mobileNo,
      "gender": gender,
    };
  }
}
