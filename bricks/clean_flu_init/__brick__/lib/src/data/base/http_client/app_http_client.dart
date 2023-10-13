import 'package:chopper/chopper.dart' show ChopperService, Response, PartValue;

/// An abstract class representing an HTTP client for the application.
abstract class AppHttpClient {
  const AppHttpClient();

  ServiceType getService<ServiceType extends ChopperService>();

  /// Sends a GET request to the specified [url].
  ///
  /// The [headers] parameter can be used to provide custom HTTP headers.
  /// The [baseUrl] parameter can be used to override the base URL for the request.
  /// The [parameters] parameter can be used to provide query parameters.
  /// The [body] parameter can be used to send a request body.
  ///
  /// The [BodyType] should be the expected type of the response body.
  /// If [BodyType] is a [List] or a [BuiltList], [InnerType] should be the type of the
  /// generic parameter (e.g., `convertResponse<List<CustomObject>, CustomObject>(response)`).
  ///
  /// Returns a [Future] that resolves to a [Response] object containing the response data.
  Future<Response<BodyType>> get<BodyType, InnerType>(
    Uri url, {
    Map<String, String> headers = const {},
    Uri? baseUrl,
    Map<String, dynamic> parameters = const {},
    dynamic body,
  });

  /// Sends a POST request to the specified [url].
  ///
  /// The [body] parameter can be used to send a request body.
  /// The [parts] parameter can be used to send multipart/form-data.
  /// The [headers] parameter can be used to provide custom HTTP headers.
  /// The [parameters] parameter can be used to provide query parameters.
  /// The [multipart] parameter indicates whether the request is multipart.
  /// The [baseUrl] parameter can be used to override the base URL for the request.
  ///
  /// The [BodyType] should be the expected type of the response body.
  /// If [BodyType] is a [List] or a [BuiltList], [InnerType] should be the type of the
  /// generic parameter (e.g., `convertResponse<List<CustomObject>, CustomObject>(response)`).
  ///
  /// Returns a [Future] that resolves to a [Response] object containing the response data.
  Future<Response<BodyType>> post<BodyType, InnerType>(
    Uri url, {
    dynamic body,
    List<PartValue> parts = const [],
    Map<String, String> headers = const {},
    Map<String, dynamic> parameters = const {},
    bool multipart = false,
    Uri? baseUrl,
  });

  /// Sends a PUT request to the specified [url].
  ///
  /// The [body] parameter can be used to send a request body.
  /// The [parts] parameter can be used to send multipart/form-data.
  /// The [headers] parameter can be used to provide custom HTTP headers.
  /// The [parameters] parameter can be used to provide query parameters.
  /// The [multipart] parameter indicates whether the request is multipart.
  /// The [baseUrl] parameter can be used to override the base URL for the request.
  ///
  /// The [BodyType] should be the expected type of the response body.
  /// If [BodyType] is a [List] or a [BuiltList], [InnerType] should be the type of the
  /// generic parameter (e.g., `convertResponse<List<CustomObject>, CustomObject>(response)`).
  ///
  /// Returns a [Future] that resolves to a [Response] object containing the response data.
  Future<Response<BodyType>> put<BodyType, InnerType>(
    Uri url, {
    dynamic body,
    List<PartValue> parts = const [],
    Map<String, String> headers = const {},
    Map<String, dynamic> parameters = const {},
    bool multipart = false,
    Uri? baseUrl,
  });

  /// Sends an OPTIONS request to the specified [url].
  ///
  /// The [headers] parameter can be used to provide custom HTTP headers.
  /// The [parameters] parameter can be used to provide query parameters.
  /// The [baseUrl] parameter can be used to override the base URL for the request.
  ///
  /// The [BodyType] should be the expected type of the response body.
  /// If [BodyType] is a [List] or a [BuiltList], [InnerType] should be the type of the
  /// generic parameter (e.g., `convertResponse<List<CustomObject>, CustomObject>(response)`).
  ///
  /// Returns a [Future] that resolves to a [Response] object containing the response data.
  Future<Response<BodyType>> options<BodyType, InnerType>(
    Uri url, {
    Map<String, String> headers = const {},
    Map<String, dynamic> parameters = const {},
    Uri? baseUrl,
  });

  /// Sends a DELETE request to the specified [url].
  ///
  /// The [headers] parameter can be used to provide custom HTTP headers.
  /// The [parameters] parameter can be used to provide query parameters.
  /// The [baseUrl] parameter can be used to override the base URL for the request.
  ///
  /// The [BodyType] should be the expected type of the response body.
  /// If [BodyType] is a [List] or a [BuiltList], [InnerType] should be the type of the
  /// generic parameter (e.g., `convertResponse<List<CustomObject>, CustomObject>(response)`).
  ///
  /// Returns a [Future] that resolves to a [Response] object containing the response data.
  Future<Response<BodyType>> delete<BodyType, InnerType>(
    Uri url, {
    Map<String, String> headers = const {},
    Map<String, dynamic> parameters = const {},
    Uri? baseUrl,
  });

  /// Sends a PATCH request to the specified [url].
  ///
  /// The [body] parameter can be used to send a request body.
  /// The [parts] parameter can be used to send multipart/form-data.
  /// The [headers] parameter can be used to provide custom HTTP headers.
  /// The [parameters] parameter can be used to provide query parameters.
  /// The [multipart] parameter indicates whether the request is multipart.
  /// The [baseUrl] parameter can be used to override the base URL for the request.
  ///
  /// The [BodyType] should be the expected type of the response body.
  /// If [BodyType] is a [List] or a [BuiltList], [InnerType] should be the type of the
  /// generic parameter (e.g., `convertResponse<List<CustomObject>, CustomObject>(response)`).
  ///
  /// Returns a [Future] that resolves to a [Response] object containing the response data.
  Future<Response<BodyType>> patch<BodyType, InnerType>(
    Uri url, {
    dynamic body,
    List<PartValue> parts = const [],
    Map<String, String> headers = const {},
    Map<String, dynamic> parameters = const {},
    bool multipart = false,
    Uri? baseUrl,
  });

  /// Sends a HEAD request to the specified [url].
  ///
  /// The [headers] parameter can be used to provide custom HTTP headers.
  /// The [parameters] parameter can be used to provide query parameters.
  /// The [baseUrl] parameter can be used to override the base URL for the request.
  ///
  /// The [BodyType] should be the expected type of the response body.
  /// If [BodyType] is a [List] or a [BuiltList], [InnerType] should be the type of the
  /// generic parameter (e.g., `convertResponse<List<CustomObject>, CustomObject>(response)`).
  ///
  /// Returns a [Future] that resolves to a [Response] object containing the response data.
  Future<Response<BodyType>> head<BodyType, InnerType>(
    Uri url, {
    Map<String, String> headers = const {},
    Map<String, dynamic> parameters = const {},
    Uri? baseUrl,
  });
}
