import 'package:hive_flutter/hive_flutter.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'api_client.dart';

part 'api_service.g.dart';

/// An API service that handles authentication and exposes an [ApiClient].
///
/// Every API call coming from UI should watch/read this provider instead of
/// instantiating the [ApiClient] itself. When being watched, it will force any
/// data provider (provider that fetches data) to refetch when the
/// authentication state changes.
///
/// The provider is kept alive to follow dio's recommendation to use the same
/// client instance for the entire app. Technically, this would still work
/// without keepAlive set to true.
@Riverpod(keepAlive: true)
ApiClient apiService(ApiServiceRef ref) {
  final token = Hive.box<String>('token').get('current');
  return token != null ? ApiClient.withToken(token) : ApiClient();
}