import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:sala/l10n/app_localizations.dart';

import '../services/local_storage.dart';
import '../services/locator.dart';

class LocalizationNotifier with ChangeNotifier {
  Locale? _locale;
  final LocalStorage storage = locator<LocalStorage>();

  // Récupère la locale courante
  Locale? get currentLocale => _locale;

  // Récupère la liste des langues supportées
  List<Locale> get supportedLocales => AppLocalizations.supportedLocales;

  // Constructeur qui charge la langue sauvegardée
  LocalizationNotifier() {
    _loadLocale();
  }

  // Méthode pour récupérer la langue sauvegardée
  void _loadLocale() {
    final storedLocale = storage.getString(StorageKeys().languageKey);
    if (storedLocale != null) {
      // Charge la locale sauvegardée
      _locale = Locale(storedLocale);
      notifyListeners();
    } else {
      // Si aucune langue n'est sauvegardée, on utilise la langue par défaut (par exemple, l'anglais)
      _locale = AppLocalizations.supportedLocales.first;
      notifyListeners();
    }
  }

  // Méthode pour changer la langue et la sauvegarder
  void setLanguage(Locale locale) {
    _locale = locale;

    // Sauvegarde la locale sélectionnée
    storage.setString(StorageKeys().languageKey, locale.languageCode);

    log('Language set to: $_locale');

    notifyListeners();
  }
}
