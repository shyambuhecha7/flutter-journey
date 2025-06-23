class ApiResponse {
  ApiResponse({
    required this.page,
    required this.perPage,
    required this.total,
    required this.totalPages,
    required this.data,
    required this.support,
  });

  final int? page;
  final int? perPage;
  final int? total;
  final int? totalPages;
  final List<User> data;
  final Support? support;

  factory ApiResponse.fromJson(Map<String, dynamic> json){
    return ApiResponse(
      page: json["page"],
      perPage: json["per_page"],
      total: json["total"],
      totalPages: json["total_pages"],
      data: json["data"] == null ? [] : List<User>.from(json["data"]!.map((x) => User.fromJson(x))),
      support: json["support"] == null ? null : Support.fromJson(json["support"]),
    );
  }

}

class User {
  User({
    required this.id,
    required this.email,
    required this.firstName,
    required this.lastName,
    required this.avatar,
  });

  final int? id;
  final String? email;
  final String? firstName;
  final String? lastName;
  final String? avatar;

  factory User.fromJson(Map<String, dynamic> json){
    return User(
      id: json["id"],
      email: json["email"],
      firstName: json["first_name"],
      lastName: json["last_name"],
      avatar: json["avatar"],
    );
  }

}

class Support {
  Support({
    required this.url,
    required this.text,
  });

  final String? url;
  final String? text;

  factory Support.fromJson(Map<String, dynamic> json){
    return Support(
      url: json["url"],
      text: json["text"],
    );
  }

}
