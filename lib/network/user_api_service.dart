import 'package:dio/dio.dart';
import 'package:my_first_project/models/dio/user_request.dart';
import 'package:my_first_project/models/dio/user_response.dart';

class UserApiService {
  final Dio _dio = Dio(
    BaseOptions(
      baseUrl: 'https://reqres.in/api/',
      headers: {
        'Content-Type': 'application/json',
        'x-api-key': 'reqres-free-v1',
      },
      connectTimeout: Duration(seconds: 10),
      receiveTimeout: Duration(seconds: 10),
    ),
  );

  Future<UserResponse> createUser(UserRequest userRequest) async {
    try {
      final response = await _dio.post('users', data: userRequest.toJson());
      return UserResponse.fromJson(response.data);
    } on DioException catch (e) {
      throw Exception(
        'Failed to create user: ${e.response?.data ?? e.message}',
      );
    }
  }
}
