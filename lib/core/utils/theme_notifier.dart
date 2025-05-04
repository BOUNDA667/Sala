import 'package:flutter/material.dart';

import '../services/local_storage.dart';
import '../services/locator.dart';

class ThemeNotifier with ChangeNotifier {
  ThemeMode _themeMode = ThemeMode.system;
  ThemeMode get themeMode => _themeMode;
  final LocalStorage storage = locator<LocalStorage>();

  // Constructeur qui lance le chargement du thème sauvegardé
  ThemeNotifier() {
    _loadTheme();
  }

  // Méthode pour récupérer le thème sauvegardé
  void _loadTheme() {
    final storedTheme = storage.getString(StorageKeys().themeKey);
    if (storedTheme != null) {
      switch (storedTheme) {
        case 'light':
          _themeMode = ThemeMode.light;
          break;
        case 'dark':
          _themeMode = ThemeMode.dark;
          break;
        default:
          _themeMode = ThemeMode.system;
      }
      notifyListeners();
    }
  }

  // Méthode pour changer et sauvegarder le thème
  void setTheme(ThemeMode mode) {
    _themeMode = mode;

    String themeStr;
    switch (mode) {
      case ThemeMode.light:
        themeStr = 'light';
        break;
      case ThemeMode.dark:
        themeStr = 'dark';
        break;
      default:
        themeStr = 'system';
    }

    storage.setString(StorageKeys().themeKey, themeStr);
    notifyListeners();
  }
}
