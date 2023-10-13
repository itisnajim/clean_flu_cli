import 'dart:async';
import 'package:flutter/foundation.dart';
import 'package:chopper/chopper.dart';

import 'app_http_client.dart';

class AppHttpClientImpl extends AppHttpClient {
  final Uri? baseUrl;

  final Map<Type, dynamic Function(Map<String, dynamic>)>? factories;
  final Iterable<ChopperService> services;
  final Iterable<dynamic> interceptors;
  final Authenticator? authenticator;

  late ChopperClient _client;

  @override
  ServiceType getService<ServiceType extends ChopperService>() =>
      _client.getService();

  AppHttpClientImpl({
    this.baseUrl,
    this.factories,
    this.services = const [],
    this.interceptors = const [],
    this.authenticator,
  }) {
    _client = _createHttpClient();
  }

  ChopperClient _createHttpClient() {
    return ChopperClient(
      baseUrl: baseUrl,
      authenticator: authenticator,
      converter: factories == null
          ? null
          : JsonSerializableConverter(
              CustomJsonDecoder(factories!),
            ),
      errorConverter: const JsonConverter(),
      services: services,
      interceptors: interceptors,
    );
  }

  @override
  Future<Response<BodyType>> get<BodyType, InnerType>(
    Uri url, {
    Map<String, String> headers = const {},
    Uri? baseUrl,
    Map<String, dynamic> parameters = const {},
    body,
  }) =>
      _client.get(
        url,
        headers: headers,
        parameters: parameters,
        baseUrl: baseUrl,
        body: body,
      );

  @override
  Future<Response<BodyType>> post<BodyType, InnerType>(
    Uri url, {
    body,
    List<PartValue> parts = const [],
    Map<String, String> headers = const {},
    Map<String, dynamic> parameters = const {},
    bool multipart = false,
    Uri? baseUrl,
  }) =>
      _client.post(
        url,
        body: body,
        parts: parts,
        headers: headers,
        parameters: parameters,
        multipart: multipart,
        baseUrl: baseUrl,
      );

  @override
  Future<Response<BodyType>> put<BodyType, InnerType>(
    Uri url, {
    body,
    List<PartValue> parts = const [],
    Map<String, String> headers = const {},
    Map<String, dynamic> parameters = const {},
    bool multipart = false,
    Uri? baseUrl,
  }) =>
      _client.put(
        url,
        body: body,
        headers: headers,
        parameters: parameters,
        multipart: multipart,
        baseUrl: baseUrl,
      );

  @override
  Future<Response<BodyType>> options<BodyType, InnerType>(
    Uri url, {
    Map<String, String> headers = const {},
    Map<String, dynamic> parameters = const {},
    Uri? baseUrl,
  }) =>
      _client.options(
        url,
        headers: headers,
        parameters: parameters,
        baseUrl: baseUrl,
      );

  @override
  Future<Response<BodyType>> delete<BodyType, InnerType>(
    Uri url, {
    Map<String, String> headers = const {},
    Map<String, dynamic> parameters = const {},
    Uri? baseUrl,
  }) =>
      _client.delete(
        url,
        headers: headers,
        parameters: parameters,
        baseUrl: baseUrl,
      );

  @override
  Future<Response<BodyType>> patch<BodyType, InnerType>(
    Uri url, {
    body,
    List<PartValue> parts = const [],
    Map<String, String> headers = const {},
    Map<String, dynamic> parameters = const {},
    bool multipart = false,
    Uri? baseUrl,
  }) =>
      _client.patch(
        url,
        body: body,
        parts: parts,
        headers: headers,
        parameters: parameters,
        multipart: multipart,
        baseUrl: baseUrl,
      );

  @override
  Future<Response<BodyType>> head<BodyType, InnerType>(
    Uri url, {
    Map<String, String> headers = const {},
    Map<String, dynamic> parameters = const {},
    Uri? baseUrl,
  }) =>
      _client.delete(
        url,
        headers: headers,
        parameters: parameters,
        baseUrl: baseUrl,
      );
}

/// Custom converter to convert the response body to a Models
class JsonSerializableConverter extends JsonConverter {
  const JsonSerializableConverter(this.jsonDecoder);
  final CustomJsonDecoder jsonDecoder;

  @override
  FutureOr<Response<BodyType>> convertResponse<BodyType, InnerType>(
    Response response,
  ) async {
    if (response.bodyString.isEmpty) {
      return Response(response.base, null, error: response.error);
    }

    final jsonRes = await super.convertResponse(response);
    debugPrint("jsonRes.bodyString ${jsonRes.bodyString}");
    return jsonRes.copyWith<BodyType>(
      body: jsonDecoder.decode<InnerType>(jsonRes.body) as BodyType,
    );
  }
}

typedef JsonFactory<T> = T Function(Map<String, dynamic> json);

class CustomJsonDecoder {
  const CustomJsonDecoder(this.factories);
  final Map<Type, JsonFactory> factories;

  dynamic decode<T>(dynamic entity) {
    if (entity is Iterable) {
      return _decodeList<T>(entity);
    }
    if (entity is T) {
      return entity;
    }
    if (entity is Map<String, dynamic>) {
      return _decodeMap<T>(entity);
    }
    return entity;
  }

  T _decodeMap<T>(Map<String, dynamic> values) {
    final jsonFactory = factories[T];
    if (jsonFactory == null || jsonFactory is! JsonFactory<T>) {
      return throw "Could not find factory for type $T. Is '$T: $T.fromJsonFactory' included in the CustomJsonDecoder instance creation in bootstrapper.dart?";
    }

    return jsonFactory(values);
  }

  List<T> _decodeList<T>(Iterable values) =>
      values.where((v) => v != null).map<T>((v) => decode<T>(v) as T).toList();
}
