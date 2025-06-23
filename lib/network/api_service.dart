import 'dart:convert';

import 'package:http/http.dart' as http;

import '../models/ApiResponse.dart';

class ApiService{
  final baseUrl = 'https://reqres.in/api';

  Future<List<User>> fetchUsers() async {
    final response = await http.get(Uri.parse("$baseUrl/users?page=2"));

    if(response.statusCode==200){
      final data = json.decode(response.body);
      return ApiResponse.fromJson(data).data;
    }else{
      throw Exception("Failed to load");
    }
  }

}