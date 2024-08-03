class UserRequestModel {
  final String? name;
  final String? job;
  final int? id;
  final DateTime? createdAt;
  final String? email;

  UserRequestModel({
    required this.name,
    required this.email,
    this.job,
    this.id,
    this.createdAt,
  });

  Map<String, dynamic> toJson() => {
        "name": name,
        "job": job,
        "id": id,
        "createdAt": createdAt?.toIso8601String(),
        "email": email
      };

  @override
  String toString() {
    return 'UserResponseModel(name: $name, job: $job, id: $id, createdAt: $createdAt, email: $email)';
  }
}
