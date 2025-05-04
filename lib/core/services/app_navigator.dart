import 'package:flutter/material.dart';

class AppNavigator {
  // Méthode pour naviguer vers une nouvelle page
  static Future<void> navigateTo(BuildContext context, Widget page) {
    return Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => page),
    );
  }

  // Méthode pour revenir à la page précédente
  static void goBack(BuildContext context) {
    Navigator.pop(context);
  }

  // Méthode pour remplacer la page actuelle par une nouvelle page
  static Future<void> replaceWith(BuildContext context, Widget page) {
    return Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => page),
    );
  }

  // Méthode pour réinitialiser la pile de navigation et naviguer vers une nouvelle page
  static Future<void> removeAllAndNavigateTo(
      BuildContext context, Widget page) {
    return Navigator.pushAndRemoveUntil(
      context,
      MaterialPageRoute(builder: (context) => page),
      (Route<dynamic> route) =>
          false, // Cette condition supprime toutes les autres pages
    );
  }
}
