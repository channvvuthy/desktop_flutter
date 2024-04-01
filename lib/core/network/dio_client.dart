import 'package:dio/dio.dart';
import 'package:esc_desktop_application/utils/constant.dart';

/// Create a singleton class to contain all Dio methods and helper functions
class DioClient {
  DioClient._();

  static final instance = DioClient._();

  final Dio _dio = Dio(BaseOptions(
      headers: {'Authorization': 'Basic $basicAuth'},
      baseUrl: apiBaseUrl,
      connectTimeout: const Duration(seconds: 60),
      receiveTimeout: const Duration(seconds: 60),
      responseType: ResponseType.json));

  /// Retrieves data from the specified [path] using the HTTP GET method.
  ///
  /// Parameters:
  ///   - [path]: The path of the API endpoint to retrieve data from.
  ///   - [queryParameters]: Optional query parameters to include in the request.
  ///   - [options]: Optional DIO options for the request.
  ///   - [cancelToken]: Optional cancel token for the request.
  ///   - [onReceiveProgress]: Optional callback for progress tracking of the request.
  ///
  /// Returns:
  ///   A `Future` that resolves to a `Map<String, dynamic>` representing the response data.
  ///
  /// Throws:
  ///   - A `String` indicating that something went wrong if the response status code is not 200.
  Future<Map<String, dynamic>> get(String path,
      {Map<String, dynamic>? queryParameters,
      Options? options,
      CancelToken? cancelToken,
      ProgressCallback? onReceiveProgress}) async {
    try {
      final Response response = await _dio.get(
        path,
        queryParameters: queryParameters,
        options: options,
        cancelToken: cancelToken,
        onReceiveProgress: onReceiveProgress,
      );
      if (response.statusCode == 200) {
        return response.data;
      }
      throw "something went wrong";
    } catch (e) {
      rethrow;
    }
  }

  /// Sends a POST request to the specified [path] with optional [data], [queryParameters],
  /// [options], [cancelToken], [onSendProgress], and [onReceiveProgress].
  ///
  /// Returns a `Future` that resolves to a `Map<String, dynamic>` representing the
  /// response data if the request is successful (status code 200 or 201).
  ///
  /// Throws a `String` with the message "something went wrong" if the request fails.
  ///
  /// Example usage:
  ///
  /// ```dart
  /// final data = {'name': 'John', 'age': 30};
  /// final response = await post('/api/users', data: data);
  /// print(response['message']);
  /// ```
  Future<Map<String, dynamic>> post(String path,
      {data,
      Map<String, dynamic>? queryParameters,
      Options? options,
      CancelToken? cancelToken,
      ProgressCallback? onSendProgress,
      ProgressCallback? onReceiveProgress}) async {
    try {
      final Response response = await _dio.post(
        path,
        data: data,
        queryParameters: queryParameters,
        options: options,
        cancelToken: cancelToken,
        onSendProgress: onSendProgress,
        onReceiveProgress: onReceiveProgress,
      );
      if (response.statusCode == 200 || response.statusCode == 201) {
        if (response.data['status'] != 0) {
          throw response.data['msg'];
        }
        return response.data;
      }
      throw "something went wrong";
    } catch (e) {
      rethrow;
    }
  }

  /// Sends a PUT request to the specified [path] with optional [data], [queryParameters], [options], [cancelToken], [onSendProgress], and [onReceiveProgress].
  ///
  /// Returns a [Future] that resolves to a [Map<String, dynamic>] representing the response data if the request is successful (status code 200).
  /// Throws an exception if the request fails.
  ///
  /// Parameters:
  /// - [path]: The path of the API endpoint.
  /// - [data]: The request data.
  /// - [queryParameters]: The query parameters.
  /// - [options]: The request options.
  /// - [cancelToken]: The cancel token.
  /// - [onSendProgress]: The callback function for sending progress.
  /// - [onReceiveProgress]: The callback function for receiving progress.
  ///
  /// Example usage:
  /// ```dart
  /// final response = await put('/api/user', data: {'name': 'John Doe'});
  /// print(response['message']);
  /// ```
  Future<Map<String, dynamic>> put(String path,
      {data,
      Map<String, dynamic>? queryParameters,
      Options? options,
      CancelToken? cancelToken,
      ProgressCallback? onSendProgress,
      ProgressCallback? onReceiveProgress}) async {
    try {
      final Response response = await _dio.put(
        path,
        data: data,
        queryParameters: queryParameters,
        options: options,
        cancelToken: cancelToken,
        onSendProgress: onSendProgress,
        onReceiveProgress: onReceiveProgress,
      );
      if (response.statusCode == 200) {
        return response.data;
      }
      throw "something went wrong";
    } catch (e) {
      rethrow;
    }
  }

  // A function to delete data at the specified path with optional data, query parameters, options, cancel token, and progress callbacks. Returns a Future<dynamic>.
  Future<dynamic> delete(String path,
      {data,
      Map<String, dynamic>? queryParameters,
      Options? options,
      CancelToken? cancelToken,
      ProgressCallback? onSendProgress,
      ProgressCallback? onReceiveProgress}) async {
    try {
      final Response response = await _dio.delete(
        path,
        data: data,
        queryParameters: queryParameters,
        options: options,
        cancelToken: cancelToken,
      );
      if (response.statusCode == 204) {
        return response.data;
      }
      throw "something went wrong";
    } catch (e) {
      rethrow;
    }
  }
}
