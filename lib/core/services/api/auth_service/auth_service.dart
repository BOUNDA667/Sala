import 'dart:developer';

import 'package:sala/core/services/api/api_response.dart';
import 'package:sala/core/services/api/api_service.dart';
import 'package:sala/core/services/api/url_service.dart';

class AuthService extends ApiService {
  Future<ApiResponse> login(Map<String, dynamic> body) async {
    log("login URL: ${UrlService().login}");

    final response = await postRequest(
      UrlService().login,
      body,
      withAuth: false,
    );

    Map<String, dynamic> userData = response.data["user"];
    var token = response.data["token"];
    userData.addAll({"token": token});

    return ApiResponse(
      statusCode: response.statusCode,
      data: userData,
    );
  }

  Future<ApiResponse> register(Map<String, dynamic> body) async {
    final response = await postRequest(
      UrlService().register,
      body,
      withAuth: false,
    );
    return response;
  }
}
