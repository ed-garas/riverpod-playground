import 'package:hive_flutter/hive_flutter.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../models/login.dart';
import '../models/user.dart';
import '../services/api_service.dart';

part 'auth_provider.g.dart';

enum AuthenticationState {
  unknown,
  unauthenticated,
  authenticated,
}

@riverpod
class Authentication extends _$Authentication {
  final _tokenBox = Hive.box<String>('token');
  final _userBox = Hive.box<User>('user');

  @override
  AuthenticationState build() {
    final token = _tokenBox.get('current');
    print('token here $token');
    return token != null ? AuthenticationState.authenticated : AuthenticationState.unauthenticated;
  }

  /// Attempts to log in with [data] and saves the token and user info to storage.
  /// Will invalidate the state if success.
  Future<void> login(Login data) async {
    final (user, token) = await ref.read(apiServiceProvider).login(data);

    print('user $user');
    print('token $token');
    // Save the new [token] and [user] to Hive box.
    _tokenBox.put('current', token);
    _userBox.put('current', user);

    ref
    // Invalidate the state so the auth state will be updated to authenticated.
      ..invalidateSelf()
    // Invalidate the API service so that it will use the new token.
      ..invalidate(apiServiceProvider);
  }

  /// Logs out, deletes the saved token and user info from storage, and invalidates
  /// the state.
  void logout() {
    // Delete the current [token] and [user] from Hive box.
    _tokenBox.delete('current');
    _userBox.delete('current');
    _userBox.clear();

    ref
    // Invalidate the state so the auth state will be updated to unauthenticated.
      ..invalidateSelf()
    // Invalidate the API service so that it will no longer use the previous token.
      ..invalidate(apiServiceProvider);
  }
}