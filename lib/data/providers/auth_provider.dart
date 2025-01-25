import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../api/auth_api.dart';

final authProvider =
    StateNotifierProvider<AuthNotifier, AsyncValue<String>>((ref) {
  return AuthNotifier(AuthAPI());
});

class AuthNotifier extends StateNotifier<AsyncValue<String>> {
  final AuthAPI _authAPI;

  AuthNotifier(this._authAPI) : super(const AsyncValue.data(""));

  Future<void> login(String email, String password) async {
    state = const AsyncValue.loading();
    try {
      final token = await _authAPI.login(email, password);
      state = AsyncValue.data(token);
    } catch (e) {
      state = AsyncValue.error(e);
    }
  }
}
