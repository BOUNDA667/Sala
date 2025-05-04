import 'package:sala/core/services/my_form_validators.dart';

import 'my_strings_utils.dart';

class MySignedDecimalNumberValidator implements MyFieldValidatorRule<String> {
  final bool required;

  // Constructeur qui permet de préciser si le champ est requis
  MySignedDecimalNumberValidator({this.required = true});

  @override
  String? validate(String? value, bool required, Map<String, dynamic> data) {
    // Si le champ n'est pas requis et est vide, retourne null
    if (value == null || value.isEmpty) {
      if (!this.required) {
        return null;
      }
      return "Ce champ est requis";
    }

    // Expression régulière pour un nombre décimal signé
    final RegExp regex = RegExp(r'^-?\d+(\.\d+)?$');

    // Si la valeur ne correspond pas à la regex, retourne un message d'erreur
    if (!regex.hasMatch(value)) {
      return "Veuillez entrer un nombre décimal signé valide";
    }

    // Tout est correct
    return null;
  }
}

// Validateur pour l'adresse email
class MyEmailValidator extends MyFieldValidatorRule<String> {
  // Fonction de validation de l'email
  @override
  String? validate(String? value, bool required, Map<String, dynamic> data) {
    // Si le champ n'est pas requis et que la valeur est nulle, rien à valider
    if (!required) {
      if (value == null) {
        return null;
      }
    }
    // Si le champ est requis, vérifie que la valeur est non vide et est un email valide
    else if (value != null &&
        value.isNotEmpty &&
        !MyStringUtils.isEmail(value)) {
      return "Entrez un email valide"; // Message d'erreur en cas d'email invalide
    }

    return null; // Retourne null si tout est correct
  }
}

// Validateur pour le format de l'heure avec flexibilité sur les parties obligatoires
class MyTimeValidator extends MyFieldValidatorRule<String> {
  // Expressions régulières pour valider différents formats
  static final RegExp _hourOnlyRegex =
      RegExp(r'^(?:[01]?\d|2[0-3])$'); // Ex: "0", "12", "23"
  static final RegExp _hourMinuteRegex =
      RegExp(r'^(?:[01]?\d|2[0-3]):[0-5]\d$'); // Ex: "12:34"
  static final RegExp _hourMinuteSecondRegex =
      RegExp(r'^(?:[01]?\d|2[0-3]):[0-5]\d:[0-5]\d$'); // Ex: "12:34:56"

  @override
  String? validate(String? value, bool required, Map<String, dynamic> data) {
    // Si le champ n'est pas requis et que la valeur est nulle ou vide, rien à valider
    if (!required && (value == null || value.isEmpty)) {
      return null;
    }

    // Si une valeur est présente, vérifie qu'elle respecte l'un des formats valides
    if (value != null && value.isNotEmpty) {
      final isValid = _hourOnlyRegex.hasMatch(value) ||
          _hourMinuteRegex.hasMatch(value) ||
          _hourMinuteSecondRegex.hasMatch(value);

      if (!isValid) {
        return "Entrez une heure valide (ex : 12, 12:34 ou 12:34:56)"; // Message d'erreur en cas de format invalide
      }
    }

    return null; // Retourne null si tout est correct
  }
}

// Validateur pour la longueur d'un champ texte
class MyLengthValidator implements MyFieldValidatorRule<String> {
  final bool short, required;
  final int? min, max, exact;

  // Constructeur pour spécifier les contraintes de longueur
  MyLengthValidator({
    this.required = true,
    this.exact,
    this.min,
    this.max,
    this.short = false,
  });

  // Fonction de validation pour la longueur
  @override
  String? validate(String? value, bool required, Map<String, dynamic> data) {
    // Si le champ n'est pas requis et est vide, retourne null
    if (value != null) {
      if (!required && value.isEmpty) {
        return null;
      }
      // Vérifie si la longueur exacte est spécifiée et non respectée
      if (exact != null && value.length != exact!) {
        return short
            ? "Besoin de $exact caractères"
            : "Besoin exactement de $exact caractères";
      }
      // Vérifie si la longueur minimale est spécifiée et non respectée
      if (min != null && value.length < min!) {
        return short
            ? "Besoin de $min caractères"
            : "Doit être plus long que $min caractères";
      }
      // Vérifie si la longueur maximale est spécifiée et non respectée
      if (max != null && value.length > max!) {
        return short
            ? "Seulement $max caractères"
            : "Doit être moins long que $max caractères";
      }
    }
    return null; // Retourne null si tout est correct
  }
}

// Validateur pour le nom (avec limites de longueur)
class MyNameValidator implements MyFieldValidatorRule<String> {
  final bool required;
  final int? min, max;

  // Constructeur pour spécifier les contraintes de longueur pour le nom
  MyNameValidator({
    this.required = true,
    this.min,
    this.max,
  });

  // Fonction de validation pour le nom
  @override
  String? validate(String? value, bool required, Map<String, dynamic> data) {
    if (value != null) {
      // Si le champ n'est pas requis et est vide, retourne null
      if (!required && value.isEmpty) {
        return null;
      }
      // Vérifie si la longueur minimale est non respectée
      if (min != null && value.length < min!) {
        return "Le nom doit contenir au moins $min caractères";
      }
      // Vérifie si la longueur maximale est non respectée
      if (max != null && value.length > max!) {
        return "Le nom doit contenir au maximum $max caractères";
      }
    }
    return null; // Retourne null si tout est correct
  }
}

// Validateur pour vérifier si la valeur est un nombre
class MyNumberValidator extends MyFieldValidatorRule<String> {
  final bool required;

  MyNumberValidator({this.required = true});

  // Fonction de validation pour les nombres
  @override
  String? validate(String? value, bool required, Map<String, dynamic> data) {
    // Si le champ n'est pas requis et que la valeur est vide ou nulle, retourne null
    if (!required) {
      if (value == null || value.isEmpty) {
        return null;
      }
    }
    // Si la valeur n'est pas un nombre valide, retourne un message d'erreur
    if (value != null && value.isNotEmpty && !MyStringUtils.isNumber(value)) {
      return "Entrez un nombre valide";
    }
    return null; // Retourne null si tout est correct
  }
}

class MyUrlValidator extends MyFieldValidatorRule<String> {
  // Fonction de validation de l'URL
  @override
  String? validate(String? value, bool required, Map<String, dynamic> data) {
    // Si le champ n'est pas requis et que la valeur est nulle, rien à valider
    if (!required) {
      if (value == null) {
        return null;
      }
    }

    // Si le champ est requis, vérifie que la valeur est non vide et est une URL valide
    if (value != null && value.isNotEmpty) {
      final urlPattern = RegExp(
        r'^(https?:\/\/)?(www\.)?([a-zA-Z0-9-_]+\.)+[a-zA-Z]{2,}(\/.*)?$',
        caseSensitive: false,
      );
      if (!urlPattern.hasMatch(value)) {
        return "Entrez une URL valide"; // Message d'erreur en cas d'URL invalide
      }
    }

    return null; // Retourne null si tout est correct
  }
}

class MyUsernameValidator extends MyFieldValidatorRule<String> {
  // Expression régulière pour valider le username : lettres, chiffres et les caractères . @ + - _
  static final RegExp _usernameRegex = RegExp(r'^[\w.@+-]+$');
  static const int maxLength = 150;

  @override
  String? validate(String? value, bool required, Map<String, dynamic> data) {
    // Si le champ n'est pas requis et que la valeur est nulle ou vide, rien à valider
    if (!required && (value == null || value.isEmpty)) {
      return null;
    }

    // Si le champ est requis mais vide, on retourne un message d'erreur
    if (value == null || value.isEmpty) {
      return "Veuillez entrer un nom d’utilisateur";
    }

    // Vérifier que la longueur ne dépasse pas 150 caractères
    if (value.length > maxLength) {
      return "150 caractères maximum";
    }

    // Vérifier que le username correspond au pattern autorisé
    if (!_usernameRegex.hasMatch(value)) {
      return "Nom d’utilisateur invalide. Seuls les lettres, nombres et les caractères « @ », « . », « + », « - » et « _ » sont autorisés";
    }

    return null; // Tout est correct
  }
}
