import 'package:flutter/material.dart';

/// Service singleton de navigation
class NavigationService {
  NavigationService._();
  static final NavigationService _instance = NavigationService._();
  factory NavigationService() => _instance;

  /// La clé globale qu’il faut passer à ton MaterialApp
  final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

  /// ROUTE BUILDER PRIVÉ avec animation slide + fade
  Route<T> _buildRoute<T>(Widget page) {
    return PageRouteBuilder<T>(
      pageBuilder: (_, animation, secondaryAnimation) => page,
      transitionDuration: const Duration(milliseconds: 400),
      reverseTransitionDuration: const Duration(milliseconds: 300),
      transitionsBuilder: (_, animation, secondaryAnimation, child) {
        // Slide from right & fade
        final slide = Tween<Offset>(
          begin: const Offset(1, 0),
          end: Offset.zero,
        ).animate(CurvedAnimation(
          parent: animation,
          curve: Curves.easeOutCubic,
        ));
        final fade = Tween<double>(begin: 0.0, end: 1.0).animate(animation);
        return SlideTransition(
          position: slide,
          child: FadeTransition(opacity: fade, child: child),
        );
      },
    );
  }

  /// Push d’une page Widget
  Future<T?> navigateTo<T>(Widget page) {
    return navigatorKey.currentState!.push<T>(_buildRoute<T>(page));
  }

  /// PushReplacement d’une page Widget
  Future<T?> replaceWith<T>(Widget page) {
    return navigatorKey.currentState!
        .pushReplacement<T, T>(_buildRoute<T>(page));
  }

  /// Push et retire tout le stack jusqu’à la page racine, puis push la page
  Future<T?> pushAndRemoveUntil<T>(Widget page) {
    return navigatorKey.currentState!.pushAndRemoveUntil<T>(
      _buildRoute<T>(page),
      (route) => false,
    );
  }

  /// Pop (retour)
  void goBack<T extends Object?>([T? result]) {
    navigatorKey.currentState!.pop<T>(result);
  }

  /// Pour les routes nommées si tu utilises onGenerateRoute
  Future<T?> navigateToNamed<T>(String name, {Object? arguments}) {
    return navigatorKey.currentState!.pushNamed<T>(name, arguments: arguments);
  }

  Future<T?> replaceWithNamed<T>(String name, {Object? arguments}) {
    return navigatorKey.currentState!
        .pushReplacementNamed<T, T>(name, arguments: arguments);
  }

  Future<T?> pushAndRemoveUntilNamed<T>(String name, {Object? arguments}) {
    return navigatorKey.currentState!.pushNamedAndRemoveUntil<T>(
      name,
      (_) => false,
      arguments: arguments,
    );
  }
}
