class UserEntity {
  final String id;
  final String email;
  final String username;
  final String? mobileNo;
  final String? gender;
  final DateTime createdAt;
  final DateTime updatedAt;
  final String? petId;

  UserEntity({
    required this.id,
    required this.email,
    required this.username,
    this.petId,
    this.mobileNo,
    this.gender,
    required this.createdAt,
    required this.updatedAt,
  });
}
