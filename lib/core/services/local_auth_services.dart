import 'dart:developer';

import 'package:flutter/services.dart';
import 'package:local_auth/local_auth.dart';

class LocalAuthService {
  // Instance du plugin local_auth
  final LocalAuthentication _auth = LocalAuthentication();

  /// Vérifie si l'appareil supporte l'authentification biométrique.
  Future<bool> isDeviceSupported() async {
    try {
      return await _auth.isDeviceSupported();
    } on PlatformException catch (e) {
      log('Erreur lors de la vérification du support biométrique: $e');
      return false;
    }
  }

  /// Vérifie si l'appareil peut utiliser des méthodes biométriques.
  Future<bool> canCheckBiometrics() async {
    try {
      return await _auth.canCheckBiometrics;
    } on PlatformException catch (e) {
      log('Erreur lors de la vérification des biométries: $e');
      return false;
    }
  }

  /// Récupère la liste des types de biométrie disponibles sur l'appareil.
  Future<List<BiometricType>> getAvailableBiometrics() async {
    try {
      return await _auth.getAvailableBiometrics();
    } on PlatformException catch (e) {
      log('Erreur lors de la récupération des biométries disponibles: $e');
      return <BiometricType>[];
    }
  }

  /// Lance le processus d'authentification biométrique.
  /// [localizedReason] est le message affiché à l'utilisateur.
  Future<bool> authenticate(
      {String localizedReason =
          'Veuillez vous authentifier pour accéder à l\'application'}) async {
    try {
      final bool authenticated = await _auth.authenticate(
        localizedReason: localizedReason,
        options: const AuthenticationOptions(
          // Utiliser uniquement la biométrie (sans code PIN)
          biometricOnly: true,
          // Permet de maintenir l'authentification lors de la transition d'applications
          stickyAuth: true,
          useErrorDialogs: true,
          sensitiveTransaction: true,
        ),
      );
      return authenticated;
    } on PlatformException catch (e) {
      log('Erreur lors de l\'authentification: $e');
      return false;
    }
  }

  /// Arrête le processus d'authentification en cours (utile par exemple lors de la mise en arrière-plan de l'application).
  Future<void> cancelAuthentication() async {
    try {
      await _auth.stopAuthentication();
    } on PlatformException catch (e) {
      log('Erreur lors de l\'annulation de l\'authentification: $e');
    }
  }
}
