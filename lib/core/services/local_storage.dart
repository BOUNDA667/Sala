import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:hive_flutter/hive_flutter.dart';
import 'package:path_provider/path_provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

class StorageKeys {
  StorageKeys._();
  static final StorageKeys _instance = StorageKeys._();
  factory StorageKeys() => _instance;

  String get userDataKey => 'user_data';
  String get loggedInUserBoolKey => "is_user_logged";
  String get languageKey => "lang_code";
  String get themeKey => "theme";
}

class LocalStorage {
  // late Box<UserModel> userBox;
  static SharedPreferences? _preferencesInstance;

///////  Initialiser la Db  /////////////
  Future<void> initializeLocaleStorage() async {
    await initializeHive();
    await initializeSharedPref();
  }

  Future<void> initializeHive() async {
    if (kIsWeb) {
      // Initialisation pour le web
      await Hive.initFlutter();
    } else {
      // Initialisation pour mobile et desktop
      final document = await getApplicationDocumentsDirectory();
      await Hive.initFlutter(document.path);
    }
  }

  static Future<void> initializeSharedPref() async {
    _preferencesInstance = await SharedPreferences.getInstance();
    await initData();
  }

  static Future<void> initData() async {
    // SharedPreferences preferences = await SharedPreferences.getInstance();

    // Vérifier si l'utilisateur est connecté
    // AuthService.isLoggedIn =
    //     preferences.getBool(StorageKeys.loggedInUserBoolKey) ?? false;
  }

  static SharedPreferences get preferences {
    if (_preferencesInstance == null) {
      throw ("Call LocalStorage.init() to initialize local storage");
    }
    return _preferencesInstance!;
  }

  static Future<bool> setLoggedInUser(bool loggedIn) async {
    return preferences.setBool(StorageKeys().loggedInUserBoolKey, loggedIn);
  }

  // static Future<bool> setLanguage(Language language) {
  //   return preferences.setString(
  //       StorageKeys.languageKey, language.locale.languageCode);
  // }

  static String? getLanguage() {
    return preferences.getString(StorageKeys().languageKey);
  }

  static Future<bool> removeLoggedInUser() async {
    return preferences.remove(StorageKeys().loggedInUserBoolKey);
  }

  /// Enregistrer une chaîne de caractères
  Future<bool> setString(String key, String value) async {
    return await preferences.setString(key, value);
  }

  /// Lire une chaîne de caractères
  String? getString(String key) {
    return preferences.getString(key);
  }

  /// Enregistrer un entier
  Future<bool> setInt(String key, int value) async {
    return await preferences.setInt(key, value);
  }

  /// Lire un entier
  int? getInt(String key) {
    return preferences.getInt(key);
  }

  /// Enregistrer un double
  Future<bool> setDouble(String key, double value) async {
    return await preferences.setDouble(key, value);
  }

  /// Lire un double
  double? getDouble(String key) {
    return preferences.getDouble(key);
  }

  /// Enregistrer un booléen
  Future<bool> setBool(String key, bool value) async {
    return await preferences.setBool(key, value);
  }

  /// Lire un booléen
  bool? getBool(String key) {
    return preferences.getBool(key);
  }

  /// Supprimer une clé spécifique
  Future<bool> remove(String key) async {
    return await preferences.remove(key);
  }

  /// Supprimer toutes les données
  Future<void> clearData() async {
    await preferences.clear();
  }
}
