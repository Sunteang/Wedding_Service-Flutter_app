import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:wedding_service_app/data/providers/base.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class CategoryAPI {
  final String baseUrl = BaseProvider.baseUrl;
  final FlutterSecureStorage _secureStorage = const FlutterSecureStorage();

  Future<List<Map<String, dynamic>>> fetchCategories() async {
    final url = Uri.parse('$baseUrl/category');
    final token = await _secureStorage.read(key: 'auth_token');

    try {
      final response = await http.get(
        url,
        headers: {
          'Content-Type': 'application/json',
          'Authorization': 'Bearer $token',
        },
      );

      print('Response Status Code: ${response.statusCode}');
      print('Response Body: ${response.body}');

      if (response.statusCode == 200) {
        final data = jsonDecode(response.body);

        if (data != null && data['data'] != null) {
          // Return the list of categories
          return List<Map<String, dynamic>>.from(data['data']);
        } else {
          throw Exception(
              'Unexpected response structure or missing category data');
        }
      } else {
        throw Exception('Failed to fetch categories: ${response.statusCode}');
      }
    } catch (e) {
      throw Exception('Failed to connect to server: $e');
    }
  }
}
