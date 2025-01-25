import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:wedding_service_app/data/providers/base.dart';

class AuthAPI {
  final String baseUrl = BaseProvider.baseUrl;

  Future<String> login(String email, String password) async {
    final url = Uri.parse('$baseUrl/login');

    try {
      final response = await http.post(
        url,
        headers: {'Content-Type': 'application/json'},
        body: jsonEncode({"email": email, "password": password}),
      );

      // Log the response for debugging
      print('Response Status Code: ${response.statusCode}');
      print('Response Body: ${response.body}');

      // Handle success (status code 200)
      if (response.statusCode == 200) {
        final data = jsonDecode(response.body);
        if (data != null &&
            data['data'] != null &&
            data['data']['token'] != null) {
          return data['data']['token']; // Return the token
        } else {
          throw Exception('Unexpected response structure or missing token');
        }
      }

      // Handle validation errors (e.g., password issues)
      if (response.statusCode == 422) {
        final errorResponse = jsonDecode(response.body);
        if (errorResponse['errors'] != null) {
          // Extract password errors, or default to a generic message
          final passwordErrors = errorResponse['errors']['password'];
          if (passwordErrors != null && passwordErrors.isNotEmpty) {
            throw Exception(passwordErrors.join(' '));
          } else {
            throw Exception('Validation failed');
          }
        }
      }

      // Handle invalid credentials
      if (response.statusCode == 400) {
        final errorResponse = jsonDecode(response.body);
        final errorMessage =
            errorResponse['data']?['error'] ?? 'Invalid credentials';
        throw Exception(errorMessage);
      }

      // Handle other errors (fallback)
      final fallbackError = jsonDecode(response.body);
      throw Exception(
          fallbackError['meta']['message'] ?? 'An unknown error occurred');
    } catch (e) {
      throw Exception('$e');
    }
  }
}
