class UserResponseModel {
  final String? name;
  final String? job;
  final int? id;
  final DateTime? createdAt;
  final String? email;

  UserResponseModel({
    required this.name,
    required this.email,
    this.job,
    this.id,
    this.createdAt,
  });

  UserResponseModel copyWith({
    String? name,
    String? job,
    int? id,
    DateTime? createdAt,
    String? email,
  }) =>
      UserResponseModel(
        name: name ?? this.name,
        job: job ?? this.job,
        id: id ?? this.id,
        createdAt: createdAt ?? this.createdAt,
        email: email ?? this.email,
      );

  factory UserResponseModel.fromJson(Map<String, dynamic> json) =>
      UserResponseModel(
        name: json["name"],
        job: json["job"],
        id: json["id"],
        email: json["email"],
        createdAt: json["createdAt"] == null
            ? null
            : DateTime.parse(json["createdAt"]),
      );

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
