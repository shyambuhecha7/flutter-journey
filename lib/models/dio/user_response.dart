class UserResponse {
  UserResponse({
    required this.name,
    required this.job,
    required this.id,
    required this.createdAt,
  });

  final String? name;
  final String? job;
  final String? id;
  final DateTime? createdAt;

  factory UserResponse.fromJson(Map<String, dynamic> json){
    return UserResponse(
      name: json["name"],
      job: json["job"],
      id: json["id"],
      createdAt: DateTime.tryParse(json["createdAt"] ?? ""),
    );
  }

  Map<String, dynamic> toJson() => {
    "name": name,
    "job": job,
    "id": id,
    "createdAt": createdAt?.toIso8601String(),
  };

}
