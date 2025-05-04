import 'dart:async';
import 'dart:convert';

// import 'dart:developer';

import 'package:http/http.dart' as http;
import 'package:sala/core/controllers/auth_controller.dart';

import 'api_response.dart';

abstract class ApiService {
  late AuthController auth;

  static const int _defaultTimeoutSeconds = 50;

  ApiService() {
    // auth = Utils.getController<LoginController>(() => LoginController());
  }

  // Construire les headers, avec ou sans token
  Map<String, String> buildHeaders({bool withAuth = true}) {
    // auth = Utils.getController(() => AuthController());
    final headers = <String, String>{
      'Content-Type': 'application/json; charset=UTF-8',
    };

    // if (withAuth) {
    //   headers['Authorization'] = 'Bearer ${auth.user.value!.accessToken!}';
    // }

    return headers;
  }

  // Méthode GET générique avec timeout et queryParameters
  Future<ApiResponse> getRequest(String url,
      {bool withAuth = true, Map<String, String>? queryParameters}) async {
    try {
      final uri = Uri.parse(url).replace(queryParameters: queryParameters);
      final response = await http
          .get(uri, headers: buildHeaders(withAuth: withAuth))
          .timeout(const Duration(seconds: _defaultTimeoutSeconds));
      return _handleResponse(response);
    } on TimeoutException {
      return ApiResponse(
        statusCode: 408,
        errorMessage: "Requête expirée. Veuillez vérifier votre connexion.",
      );
    }
  }

// Méthode POST générique avec timeout et queryParameters
  Future<ApiResponse> postRequest(String url, Map<String, dynamic> body,
      {bool withAuth = true, Map<String, String>? queryParameters}) async {
    try {
      final uri = Uri.parse(url).replace(queryParameters: queryParameters);
      final response = await http
          .post(uri,
              headers: buildHeaders(withAuth: withAuth), body: jsonEncode(body))
          .timeout(const Duration(seconds: _defaultTimeoutSeconds));
      return _handleResponse(response);
    } on TimeoutException {
      return ApiResponse(
        statusCode: 408,
        errorMessage: "Requête expirée. Veuillez vérifier votre connexion.",
      );
    }
  }

// Méthode PUT générique avec timeout et queryParameters
  Future<ApiResponse> putRequest(String url, Map<String, dynamic> body,
      {bool withAuth = true, Map<String, String>? queryParameters}) async {
    try {
      final uri = Uri.parse(url).replace(queryParameters: queryParameters);
      final response = await http
          .put(uri,
              headers: buildHeaders(withAuth: withAuth), body: jsonEncode(body))
          .timeout(const Duration(seconds: _defaultTimeoutSeconds));
      return _handleResponse(response);
    } on TimeoutException {
      return ApiResponse(
        statusCode: 408,
        errorMessage: "Requête expirée. Veuillez vérifier votre connexion.",
      );
    }
  }

// Méthode PATCH générique avec timeout et queryParameters
  Future<ApiResponse> patchRequest(String url, Map<String, dynamic> body,
      {bool withAuth = true, Map<String, String>? queryParameters}) async {
    try {
      final uri = Uri.parse(url).replace(queryParameters: queryParameters);
      final response = await http
          .patch(uri,
              headers: buildHeaders(withAuth: withAuth), body: jsonEncode(body))
          .timeout(const Duration(seconds: _defaultTimeoutSeconds));
      return _handleResponse(response);
    } on TimeoutException {
      return ApiResponse(
        statusCode: 408,
        errorMessage: "Requête expirée. Veuillez vérifier votre connexion.",
      );
    }
  }

// Méthode DELETE générique avec timeout et queryParameters
  Future<ApiResponse> deleteRequest(String url,
      {bool withAuth = true, Map<String, String>? queryParameters}) async {
    try {
      final uri = Uri.parse(url).replace(queryParameters: queryParameters);
      final response = await http
          .delete(uri, headers: buildHeaders(withAuth: withAuth))
          .timeout(const Duration(seconds: _defaultTimeoutSeconds));
      return _handleResponse(response);
    } on TimeoutException {
      return ApiResponse(
        statusCode: 408,
        errorMessage: "Requête expirée. Veuillez vérifier votre connexion.",
      );
    }
  }

  ApiResponse _handleResponse(http.Response response) {
    final responseCode = response.statusCode;
    dynamic responseData;

    // Décoder en UTF-8 pour corriger les accents
    String decodedBody = utf8.decode(response.bodyBytes);
    // devLogger("responseData in ApiService: $responseData");

    try {
      responseData = decodedBody.isNotEmpty ? jsonDecode(decodedBody) : null;
    } catch (e) {
      return ApiResponse(
        statusCode: responseCode,
        errorMessage: "Erreur lors de la lecture des données du serveur.",
      );
    }

    if (responseCode >= 200 && responseCode < 300) {
      // devLogger("responseData in ApiService: $responseData");
      return ApiResponse(statusCode: responseCode, data: responseData);
    } else {
      return ApiResponse(
        data: responseData,
        statusCode: responseCode,
      );
    }
  }
}
