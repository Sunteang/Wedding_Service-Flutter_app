import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class TokenStorage {
  static const _storage = FlutterSecureStorage();
  static const _keyToken = "auth_token";

  // Save token
  static Future<void> saveToken(String token) async {
    await _storage.write(key: _keyToken, value: token);
  }

  // Get token
  static Future<String?> getToken() async {
    return await _storage.read(key: _keyToken);
  }

  // Delete token
  static Future<void> deleteToken() async {
    await _storage.delete(key: _keyToken);
  }
}