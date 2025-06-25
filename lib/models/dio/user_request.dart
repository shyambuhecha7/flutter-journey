class UserRequest {
  UserRequest({
    required this.name,
    required this.job,
  });

  final String? name;
  final String? job;

  factory UserRequest.fromJson(Map<String, dynamic> json){
    return UserRequest(
      name: json["name"],
      job: json["job"],
    );
  }

  Map<String, dynamic> toJson() => {
    "name": name,
    "job": job,
  };

}
