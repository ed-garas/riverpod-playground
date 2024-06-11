import 'package:dio/dio.dart';
import 'package:friends/models/event_form_data.dart';

import '../models/event.dart';
import '../models/login.dart';
import '../models/user.dart';

typedef ApiClientException = DioException;
typedef ApiClientResponse<T> = Response<T>;
typedef ApiClientRequestOptions = RequestOptions;
typedef _ResponseData = Map<String, Object?>;

extension ApiClientExceptionX on ApiClientException {
  String? get responseMessage => response?.data?['message'] as String?;
}

/// An API client that makes network requests.
///
/// This class is meant to be seen as a representation of the common API contract
/// or API list (such as Swagger or Postman) given by the backend.
///
/// This class does not maintain authentication state, but rather receive the token
/// from external source.
///
/// When a widget or provider wants to make a network request, it should not
/// instantiate this class, but instead call the provider that exposes an object
/// of this type.
class ApiClient {
  static final BaseOptions _defaultOptions = BaseOptions(
    baseUrl: 'https://dummyjson.com',
  );

  final Dio _httpClient;

  /// Creates an [ApiClient] with default options.
  ApiClient() : _httpClient = Dio(_defaultOptions);

  /// Creates an [ApiClient] with [token] set for authorization.
  ApiClient.withToken(String token)
      : _httpClient = Dio(
          _defaultOptions.copyWith()
            ..headers['Authorization'] = 'Bearer $token',
        );

  @override
  String toString() {
    return "ApiClient(_httpClient.options.headers['Authorization']: ${_httpClient.options.headers['Authorization']})";
  }

  Future<(User, String)> login(Login data) async {
    final response = await _httpClient.get(
      'https://663dfa8ae1913c4767961947.mockapi.io/users/1',
      data: data.toJson(),
    );

    final user = User.fromJson(response.data as _ResponseData);
    final token = 'fake_token';
    // final token = response.data['token'] as String;

    return (user, token);
  }

  Future<List<User>> getConnections() async {
    final response = await _httpClient.get(
      'https://663dfa8ae1913c4767961947.mockapi.io/users?orderBy=createdAt&order=desc',
    );

    final users = (response.data as List)
        .map((e) => User.fromJson(e as _ResponseData))
        .toList();
    return users;
  }

  Future<List<Event>> getEvents({String? userId}) async {
    String filter = '?orderBy=createdAt&order=desc';
    String url = '';
    if (userId != null) {
      url =
          'https://663dfa8ae1913c4767961947.mockapi.io/users/$userId/events$filter';
    } else {
      url = 'https://663dfa8ae1913c4767961947.mockapi.io/events$filter';
    }
    final response = await _httpClient.get(url);
    final events = (response.data as List)
        .map((e) => Event.fromJson(e as _ResponseData))
        .toList();
    return events;
  }

  Future<Event> createEvent(EventFormData data) async {
    final response = await _httpClient.post(
      'https://663dfa8ae1913c4767961947.mockapi.io/events',
      data: data.toJson(),
    );
    return Event.fromJson(response.data as _ResponseData);
  }

  Future<Event> updateEvent(String id, EventFormData data) async {
    final response = await _httpClient.put(
      'https://663dfa8ae1913c4767961947.mockapi.io/events/$id',
      data: data.toJson(),
    );
    return Event.fromJson(response.data as _ResponseData);
  }

  Future<Event> removeEvent(String id) async {
    final response = await _httpClient.delete(
      'https://663dfa8ae1913c4767961947.mockapi.io/events/$id',
    );
    print('response $response');
    return Event.fromJson(response.data as _ResponseData);
  }
}
