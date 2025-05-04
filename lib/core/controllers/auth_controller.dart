import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sala/core/controllers/my_controller.dart';
import 'package:sala/core/models/user_model.dart';
import 'package:sala/core/services/api/auth_service/auth_service.dart';
import 'package:sala/core/services/dev_logger.dart';
import 'package:sala/core/services/local_storage.dart';
import 'package:sala/core/services/my_form_validators.dart';
import 'package:sala/core/services/my_validators.dart';
import 'package:sala/core/services/navigation_service.dart';
import 'package:sala/views/auth_pages/login_page.dart';
import 'package:sala/views/main_page.dart';

class AuthController extends MyController {
  final AuthService _authService = AuthService();
  final MyFormValidator loginValidator = MyFormValidator();
  final MyFormValidator registerValidator = MyFormValidator();
  final Rx<User?> user = Rx<User?>(null);
  final RxBool isObscureText = RxBool(true);

  @override
  void onInit() {
    super.onInit();
    _addLoginFieldsController();
    getUserInLocalStorage();
  }

  void getUserInLocalStorage() {
    try {
      String? userInStorage = storage.getString(StorageKeys().userDataKey);
      if (userInStorage != null) {
        Map<String, dynamic> userInStorageMap =
            jsonDecode(userInStorage) as Map<String, dynamic>;
        setUser(User.fromJson(userInStorageMap));
      }
    } catch (e) {
      devLogger(
        "Error reading user from storage",
        error: e,
      );
    }
  }

  void setUser(User newUser) {
    user.value = newUser;
  }

  void setObscureText({bool? value}) {
    isObscureText.value = value ?? !isObscureText.value;
    update();
  }

  Future<void> login() async {
    if (!loginValidator.validateForm() || isLoading.value) return;
    try {
      isLoading.value = true;

      var formData = loginValidator.getData();

      var response = await _authService.login(formData);

      if (response.success) {
        // devLogger("response login: ${response.data}");
        var data = User.fromJson(response.data);
        setUser(data);
        storage.setString(StorageKeys().userDataKey, jsonEncode(data));
        NavigationService().replaceWith(MainPage());
      }
    } catch (e, st) {
      devLogger(
        "Error when login",
        error: e,
        stackTrace: st,
      );
    } finally {
      isLoading.value = false;
      update();
    }
  }

  Future<void> register() async {
    if (!registerValidator.validateForm() || isLoading.value) return;
    try {
      isLoading.value = true;

      var formData = registerValidator.getData();

      var response = await _authService.register(formData);

      devLogger("response login: ${response.data}");

      if (response.success) {
        NavigationService().replaceWith(LoginPage());
      }
    } catch (e) {
      devLogger(
        "Error when register",
        error: e,
      );
    } finally {
      isLoading.value = false;
      update();
    }
  }

  void _addLoginFieldsController() {
    // Login Fields
    loginValidator.addField(
      'email',
      required: true,
      label: "Email",
      validators: [MyEmailValidator()],
      controller: TextEditingController(text: 'percskjy.pp@example.com'),
    );

    loginValidator.addField(
      'password',
      required: true,
      label: "Password",
      validators: [MyLengthValidator(min: 6, max: 20)],
      controller: TextEditingController(text: 'password123'),
    );

    // Register Fields
    registerValidator.addField(
      'username',
      required: true,
      label: "Username",
      validators: [MyLengthValidator(min: 3, max: 20)],
    );

    registerValidator.addField(
      'email',
      required: true,
      label: "Email",
      validators: [MyEmailValidator()],
      controller: TextEditingController(),
    );

    registerValidator.addField(
      'password',
      required: true,
      label: "Password",
      validators: [MyLengthValidator(min: 6, max: 20)],
      controller: TextEditingController(),
    );
  }
}
