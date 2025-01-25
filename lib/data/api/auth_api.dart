import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:wedding_service_app/data/providers/base.dart';

import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class AuthAPI {
  final String baseUrl = BaseProvider.baseUrl;
  final FlutterSecureStorage _secureStorage = const FlutterSecureStorage();

  Future<String> login(String email, String password) async {
    final url = Uri.parse('$baseUrl/login');

    try {
      final response = await http.post(
        url,
        headers: {'Content-Type': 'application/json'},
        body: jsonEncode({"email": email, "password": password}),
      );

      if (response.statusCode == 200) {
        final data = jsonDecode(response.body);
        if (data != null &&
            data['data'] != null &&
            data['data']['token'] != null) {
          return data['data']['token'];
        } else {
          throw Exception('Unexpected response structure or missing token');
        }
      }

      throw Exception('Failed to login: ${response.statusCode}');
    } catch (e) {
      throw Exception('Failed to connect to server: $e');
    }
  }

  Future<void> getUser(String token) async {
    final url = Uri.parse('$baseUrl/user');

    try {
      final response = await http.get(
        url,
        headers: {
          'Content-Type': 'application/json',
          'Authorization': 'Bearer $token',
        },
      );

      if (response.statusCode == 200) {
        final data = jsonDecode(response.body);
        if (data != null &&
            data['data'] != null &&
            data['data']['user'] != null) {
          final user = data['data']['user'];

          print("User $user");

          // Save the user data securely as JSON
          await _secureStorage.write(key: 'user_data', value: jsonEncode(user));
        } else {
          throw Exception('Unexpected response structure or missing user data');
        }
      } else {
        throw Exception('Failed to fetch user data: ${response.statusCode}');
      }
    } catch (e) {
      throw Exception('Failed to connect to server: $e');
    }
  }

  // Retrieve the user data
  Future<Map<String, dynamic>?> getStoredUser() async {
    final userData = await _secureStorage.read(key: 'user_data');
    if (userData != null) {
      return jsonDecode(userData);
    }
    return null;
  }
}
