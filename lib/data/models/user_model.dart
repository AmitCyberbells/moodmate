import '../../domain/entities/user_entity.dart';

class UserModel extends UserEntity {
  UserModel({
    required super.id,
    required super.email,
    super.username,
    super.mobileNo,
    super.gender,
    required super.createdAt,
    required super.updatedAt,
  });

  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
      id: json["_id"] ?? '',
      email: json["email"] ?? '',
      username: json["username"],
      mobileNo: json["mobileNo"],
      gender: json["gender"],
      createdAt: DateTime.tryParse(json["createdAt"] ?? '') ?? DateTime.now(),
      updatedAt: DateTime.tryParse(json["updatedAt"] ?? '') ?? DateTime.now(),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      "email": email,
      "username": username,
      "mobileNo": mobileNo,
      "gender": gender,
    };
  }
}
