class UserEntity {
  final String id;
  final String email;
  final String? username;
  final String? mobileNo;
  final String? gender;
  final DateTime createdAt;
  final DateTime updatedAt;

  UserEntity({
    required this.id,
    required this.email,
    this.username,
    this.mobileNo,
    this.gender,
    required this.createdAt,
    required this.updatedAt,
  });
}
