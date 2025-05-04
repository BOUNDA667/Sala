import "package:flutter/material.dart";
import "package:google_fonts/google_fonts.dart";

class MyThemes {
  // final TextTheme textTheme;

  const MyThemes();

  // Palette sobre pour une To‑Do app : nuances de bleu‑gris et vert‑teal

  static ColorScheme lightScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(0xFF607D8B), // BlueGrey 500
      surfaceTint: Color(0xFF607D8B),
      onPrimary: Color(0xFFFFFFFF),
      primaryContainer: Color(0xFFCFD8DC), // BlueGrey 100
      onPrimaryContainer: Color(0xFF000000),

      secondary: Color(0xFF90A4AE), // BlueGrey 300
      onSecondary: Color(0xFFFFFFFF),
      secondaryContainer: Color(0xFFCFD8DC),
      onSecondaryContainer: Color(0xFF000000),

      tertiary: Color(0xFF00897B), // Teal 600
      onTertiary: Color(0xFFFFFFFF),
      tertiaryContainer: Color(0xFFB2DFDB), // Teal 100
      onTertiaryContainer: Color(0xFF000000),

      error: Color(0xFFD32F2F), // Red 700
      onError: Color(0xFFFFFFFF),
      errorContainer: Color(0xFFFFCDD2), // Red 100
      onErrorContainer: Color(0xFF000000),

      surface: Color(0xFFFFFFFF),
      onSurface: Color(0xFF000000),
      onSurfaceVariant: Color(0xFF757575), // Grey 600

      outline: Color(0xFFBDBDBD), // Grey 400
      outlineVariant: Color(0xFFE0E0E0), // Grey 300

      shadow: Color(0xFF000000),
      scrim: Color(0xFF000000),

      inverseSurface: Color(0xFF212121), // Grey 900
      inversePrimary: Color(0xFFCFD8DC),

      primaryFixed: Color(0xFFCFD8DC),
      onPrimaryFixed: Color(0xFF000000),
      primaryFixedDim: Color(0xFFB0BEC5), // BlueGrey 200
      onPrimaryFixedVariant: Color(0xFF000000),

      secondaryFixed: Color(0xFFCFD8DC),
      onSecondaryFixed: Color(0xFF000000),
      secondaryFixedDim: Color(0xFF90A4AE),
      onSecondaryFixedVariant: Color(0xFF000000),

      tertiaryFixed: Color(0xFFB2DFDB),
      onTertiaryFixed: Color(0xFF000000),
      tertiaryFixedDim: Color(0xFF80CBC4), // Teal 200
      onTertiaryFixedVariant: Color(0xFF000000),

      surfaceDim: Color(0xFFF5F5F5),
      surfaceBright: Color(0xFFFFFFFF),
      surfaceContainerLowest: Color(0xFFFFFFFF),
      surfaceContainerLow: Color(0xFFFAFAFA),
      surfaceContainer: Color(0xFFF5F5F5),
      surfaceContainerHigh: Color(0xFFEEEEEE),
      surfaceContainerHighest: Color(0xFFE0E0E0),
    );
  }

  ThemeData light() {
    return theme(lightScheme());
  }

  static ColorScheme lightMediumContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(0xFF546E7A), // BlueGrey 600
      surfaceTint: Color(0xFF607D8B),
      onPrimary: Color(0xFFFFFFFF),
      primaryContainer: Color(0xFF78909C), // BlueGrey 400
      onPrimaryContainer: Color(0xFF000000),

      secondary: Color(0xFF78909C), // BlueGrey 400
      onSecondary: Color(0xFFFFFFFF),
      secondaryContainer: Color(0xFFB0BEC5), // BlueGrey 200
      onSecondaryContainer: Color(0xFF000000),

      tertiary: Color(0xFF00796B), // Teal 700
      onTertiary: Color(0xFFFFFFFF),
      tertiaryContainer: Color(0xFF80CBC4), // Teal 200
      onTertiaryContainer: Color(0xFF000000),

      error: Color(0xFFC62828), // Red 800
      onError: Color(0xFFFFFFFF),
      errorContainer: Color(0xFFE57373), // Red 300
      onErrorContainer: Color(0xFF000000),

      surface: Color(0xFFFFFFFF),
      onSurface: Color(0xFF000000),
      onSurfaceVariant: Color(0xFF616161), // Grey 700

      outline: Color(0xFF9E9E9E), // Grey 500
      outlineVariant: Color(0xFFBDBDBD), // Grey 400

      shadow: Color(0xFF000000),
      scrim: Color(0xFF000000),

      inverseSurface: Color(0xFF212121),
      inversePrimary: Color(0xFFCFD8DC),

      primaryFixed: Color(0xFF78909C),
      onPrimaryFixed: Color(0xFFFFFFFF),
      primaryFixedDim: Color(0xFF607D8B),
      onPrimaryFixedVariant: Color(0xFFFFFFFF),

      secondaryFixed: Color(0xFFB0BEC5),
      onSecondaryFixed: Color(0xFFFFFFFF),
      secondaryFixedDim: Color(0xFF90A4AE),
      onSecondaryFixedVariant: Color(0xFFFFFFFF),

      tertiaryFixed: Color(0xFF80CBC4),
      onTertiaryFixed: Color(0xFFFFFFFF),
      tertiaryFixedDim: Color(0xFF4DB6AC), // Teal 300
      onTertiaryFixedVariant: Color(0xFFFFFFFF),

      surfaceDim: Color(0xFFF5F5F5),
      surfaceBright: Color(0xFFFFFFFF),
      surfaceContainerLowest: Color(0xFFFFFFFF),
      surfaceContainerLow: Color(0xFFFAFAFA),
      surfaceContainer: Color(0xFFF5F5F5),
      surfaceContainerHigh: Color(0xFFEEEEEE),
      surfaceContainerHighest: Color(0xFFE0E0E0),
    );
  }

  ThemeData lightMediumContrast() {
    return theme(lightMediumContrastScheme());
  }

  static ColorScheme lightHighContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(0xFF455A64), // BlueGrey 700
      surfaceTint: Color(0xFF607D8B),
      onPrimary: Color(0xFFFFFFFF),
      primaryContainer: Color(0xFF607D8B), // BlueGrey 500
      onPrimaryContainer: Color(0xFFFFFFFF),

      secondary: Color(0xFF607D8B), // BlueGrey 500
      onSecondary: Color(0xFFFFFFFF),
      secondaryContainer: Color(0xFF78909C), // BlueGrey 400
      onSecondaryContainer: Color(0xFFFFFFFF),

      tertiary: Color(0xFF00695C), // Teal 800
      onTertiary: Color(0xFFFFFFFF),
      tertiaryContainer: Color(0xFF4DB6AC), // Teal 300
      onTertiaryContainer: Color(0xFFFFFFFF),

      error: Color(0xFFB71C1C), // Red 900
      onError: Color(0xFFFFFFFF),
      errorContainer: Color(0xFFEF9A9A), // Red 200
      onErrorContainer: Color(0xFFFFFFFF),

      surface: Color(0xFFFFFFFF),
      onSurface: Color(0xFF000000),
      onSurfaceVariant: Color(0xFF424242), // Grey 800

      outline: Color(0xFF616161), // Grey 700
      outlineVariant: Color(0xFF616161),

      shadow: Color(0xFF000000),
      scrim: Color(0xFF000000),

      inverseSurface: Color(0xFF212121),
      inversePrimary: Color(0xFFCFD8DC),

      primaryFixed: Color(0xFF607D8B),
      onPrimaryFixed: Color(0xFFFFFFFF),
      primaryFixedDim: Color(0xFF455A64),
      onPrimaryFixedVariant: Color(0xFFFFFFFF),

      secondaryFixed: Color(0xFF78909C),
      onSecondaryFixed: Color(0xFFFFFFFF),
      secondaryFixedDim: Color(0xFF607D8B),
      onSecondaryFixedVariant: Color(0xFFFFFFFF),

      tertiaryFixed: Color(0xFF4DB6AC),
      onTertiaryFixed: Color(0xFFFFFFFF),
      tertiaryFixedDim: Color(0xFF00897B),
      onTertiaryFixedVariant: Color(0xFFFFFFFF),

      surfaceDim: Color(0xFFF5F5F5),
      surfaceBright: Color(0xFFFFFFFF),
      surfaceContainerLowest: Color(0xFFFFFFFF),
      surfaceContainerLow: Color(0xFFFAFAFA),
      surfaceContainer: Color(0xFFF5F5F5),
      surfaceContainerHigh: Color(0xFFEEEEEE),
      surfaceContainerHighest: Color(0xFFE0E0E0),
    );
  }

  ThemeData lightHighContrast() {
    return theme(lightHighContrastScheme());
  }

  static ColorScheme darkScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(0xFFCFD8DC), // BlueGrey 100
      surfaceTint: Color(0xFFCFD8DC),
      onPrimary: Color(0xFF000000),
      primaryContainer: Color(0xFF78909C), // BlueGrey 400
      onPrimaryContainer: Color(0xFFFFFFFF),

      secondary: Color(0xFFB0BEC5), // BlueGrey 200
      onSecondary: Color(0xFF000000),
      secondaryContainer: Color(0xFF90A4AE), // BlueGrey 300
      onSecondaryContainer: Color(0xFF000000),

      tertiary: Color(0xFF80CBC4), // Teal 200
      onTertiary: Color(0xFF000000),
      tertiaryContainer: Color(0xFF4DB6AC), // Teal 300
      onTertiaryContainer: Color(0xFF000000),

      error: Color(0xFFEF9A9A), // Red 200
      onError: Color(0xFF000000),
      errorContainer: Color(0xFFC62828), // Red 800
      onErrorContainer: Color(0xFFFFFFFF),

      surface: Color(0xFF37474F), // BlueGrey 800
      onSurface: Color(0xFFECEFF1), // BlueGrey 50
      onSurfaceVariant: Color(0xFFB0BEC5), // BlueGrey 200

      outline: Color(0xFF90A4AE), // BlueGrey 300
      outlineVariant: Color(0xFFB0BEC5),

      shadow: Color(0xFF000000),
      scrim: Color(0xFF000000),

      inverseSurface: Color(0xFFECEFF1),
      inversePrimary: Color(0xFF607D8B),

      primaryFixed: Color(0xFF78909C),
      onPrimaryFixed: Color(0xFFFFFFFF),
      primaryFixedDim: Color(0xFFCFD8DC),
      onPrimaryFixedVariant: Color(0xFF000000),

      secondaryFixed: Color(0xFF90A4AE),
      onSecondaryFixed: Color(0xFF000000),
      secondaryFixedDim: Color(0xFFB0BEC5),
      onSecondaryFixedVariant: Color(0xFF000000),

      tertiaryFixed: Color(0xFF4DB6AC),
      onTertiaryFixed: Color(0xFF000000),
      tertiaryFixedDim: Color(0xFF80CBC4),
      onTertiaryFixedVariant: Color(0xFF000000),

      surfaceDim: Color(0xFF263238), // BlueGrey 900
      surfaceBright: Color(0xFF455A64), // BlueGrey 700
      surfaceContainerLowest: Color(0xFF37474F),
      surfaceContainerLow: Color(0xFF455A64),
      surfaceContainer: Color(0xFF546E7A),
      surfaceContainerHigh: Color(0xFF607D8B),
      surfaceContainerHighest: Color(0xFF78909C),
    );
  }

  ThemeData dark() {
    return theme(darkScheme());
  }

  static ColorScheme darkMediumContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(0xFFE0F2F1), // Teal 50
      surfaceTint: Color(0xFFCFD8DC),
      onPrimary: Color(0xFF000000),
      primaryContainer: Color(0xFF80CBC4), // Teal 200
      onPrimaryContainer: Color(0xFF000000),

      secondary: Color(0xFFCFD8DC), // BlueGrey 100
      onSecondary: Color(0xFF000000),
      secondaryContainer: Color(0xFFB0BEC5), // BlueGrey 200
      onSecondaryContainer: Color(0xFF000000),

      tertiary: Color(0xFFB2DFDB), // Teal 100
      onTertiary: Color(0xFF000000),
      tertiaryContainer: Color(0xFF80CBC4), // Teal 200
      onTertiaryContainer: Color(0xFF000000),

      error: Color(0xFFFFEBEE), // Red 50
      onError: Color(0xFF000000),
      errorContainer: Color(0xFFC62828), // Red 800
      onErrorContainer: Color(0xFFFFFFFF),

      surface: Color(0xFF37474F),
      onSurface: Color(0xFFECEFF1),
      onSurfaceVariant: Color(0xFFB0BEC5),

      outline: Color(0xFF90A4AE),
      outlineVariant: Color(0xFFB0BEC5),

      shadow: Color(0xFF000000),
      scrim: Color(0xFF000000),

      inverseSurface: Color(0xFFECEFF1),
      inversePrimary: Color(0xFF607D8B),

      primaryFixed: Color(0xFF80CBC4),
      onPrimaryFixed: Color(0xFF000000),
      primaryFixedDim: Color(0xFFE0F2F1),
      onPrimaryFixedVariant: Color(0xFF000000),

      secondaryFixed: Color(0xFFB0BEC5),
      onSecondaryFixed: Color(0xFF000000),
      secondaryFixedDim: Color(0xFFCFD8DC),
      onSecondaryFixedVariant: Color(0xFF000000),

      tertiaryFixed: Color(0xFF80CBC4),
      onTertiaryFixed: Color(0xFF000000),
      tertiaryFixedDim: Color(0xFFB2DFDB),
      onTertiaryFixedVariant: Color(0xFF000000),

      surfaceDim: Color(0xFF263238),
      surfaceBright: Color(0xFF455A64),
      surfaceContainerLowest: Color(0xFF37474F),
      surfaceContainerLow: Color(0xFF455A64),
      surfaceContainer: Color(0xFF546E7A),
      surfaceContainerHigh: Color(0xFF607D8B),
      surfaceContainerHighest: Color(0xFF78909C),
    );
  }

  ThemeData darkMediumContrast() {
    return theme(darkMediumContrastScheme());
  }

  static ColorScheme darkHighContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(0xFFFFFFFF),
      surfaceTint: Color(0xFFCFD8DC),
      onPrimary: Color(0xFF000000),
      primaryContainer: Color(0xFFE0F2F1),
      onPrimaryContainer: Color(0xFF000000),
      secondary: Color(0xFFECEFF1),
      onSecondary: Color(0xFF000000),
      secondaryContainer: Color(0xFFCFD8DC),
      onSecondaryContainer: Color(0xFF000000),
      tertiary: Color(0xFFE0F7FA),
      onTertiary: Color(0xFF000000),
      tertiaryContainer: Color(0xFFB2DFDB),
      onTertiaryContainer: Color(0xFF000000),
      error: Color(0xFFFFCDD2),
      onError: Color(0xFF000000),
      errorContainer: Color(0xFFC62828),
      onErrorContainer: Color(0xFFFFFFFF),
      surface: Color(0xFF37474F),
      onSurface: Color(0xFFECEFF1),
      onSurfaceVariant: Color(0xFFB0BEC5),
      outline: Color(0xFF90A4AE),
      outlineVariant: Color(0xFFB0BEC5),
      shadow: Color(0xFF000000),
      scrim: Color(0xFF000000),
      inverseSurface: Color(0xFFECEFF1),
      inversePrimary: Color(0xFF607D8B),
      primaryFixed: Color(0xFFE0F2F1),
      onPrimaryFixed: Color(0xFF000000),
      primaryFixedDim: Color(0xFFFFFFFF),
      onPrimaryFixedVariant: Color(0xFF000000),
      secondaryFixed: Color(0xFFCFD8DC),
      onSecondaryFixed: Color(0xFF000000),
      secondaryFixedDim: Color(0xFFECEFF1),
      onSecondaryFixedVariant: Color(0xFF000000),
      tertiaryFixed: Color(0xFFB2DFDB),
      onTertiaryFixed: Color(0xFF000000),
      tertiaryFixedDim: Color(0xFFE0F7FA),
      onTertiaryFixedVariant: Color(0xFF000000),
      surfaceDim: Color(0xFF263238),
      surfaceBright: Color(0xFF455A64),
      surfaceContainerLowest: Color(0xFF37474F),
      surfaceContainerLow: Color(0xFF455A64),
      surfaceContainer: Color(0xFF546E7A),
      surfaceContainerHigh: Color(0xFF607D8B),
      surfaceContainerHighest: Color(0xFF78909C),
    );
  }

  ThemeData darkHighContrast() {
    return theme(darkHighContrastScheme());
  }

  ThemeData theme(ColorScheme colorScheme) => ThemeData(
        useMaterial3: true,
        brightness: colorScheme.brightness,
        colorScheme: colorScheme,
        textTheme: GoogleFonts.sourceCodeProTextTheme(),
        scaffoldBackgroundColor: colorScheme.surface,
        canvasColor: colorScheme.surface,

        // Personnalisation de l'AppBar
        appBarTheme: AppBarTheme(
          backgroundColor: colorScheme.surface,
          foregroundColor: colorScheme.onSurface,
          iconTheme: IconThemeData(
            color: colorScheme.onSurface,
            size: 20,
          ),
          elevation: 0,
          centerTitle: true,
          titleTextStyle: GoogleFonts.sourceCodePro(
            textStyle: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: colorScheme.onSurface,
            ),
          ),
        ),

        // Boutons Élevés
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: colorScheme.primary,
            foregroundColor: colorScheme.onPrimary,
            textStyle: GoogleFonts.sourceCodePro(
              textStyle: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30),
            ),
          ),
        ),

        // Boutons Outlined
        outlinedButtonTheme: OutlinedButtonThemeData(
          style: OutlinedButton.styleFrom(
            foregroundColor: colorScheme.primary,
            side: BorderSide(color: colorScheme.primary),
            textStyle: GoogleFonts.sourceCodePro(
              textStyle: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30),
            ),
          ),
        ),

        // Boutons Textuels
        textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(
            foregroundColor: colorScheme.primary,
            textStyle: GoogleFonts.sourceCodePro(
              textStyle: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),

        // Personnalisation des champs de saisie
        inputDecorationTheme: InputDecorationTheme(
          filled: true,
          hintStyle: GoogleFonts.sourceCodePro(
            color: colorScheme.onSurface.withValues(alpha: .5),
          ),
          errorStyle: GoogleFonts.sourceCodePro(color: colorScheme.error),
          fillColor: colorScheme.surface,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
            borderSide: BorderSide(color: colorScheme.outline),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
            borderSide: BorderSide(color: colorScheme.outline),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
            borderSide: BorderSide(color: colorScheme.primary),
          ),
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
            borderSide: BorderSide(color: colorScheme.error),
          ),
        ),

        // Personnalisation du FloatingActionButton
        floatingActionButtonTheme: FloatingActionButtonThemeData(
          backgroundColor: colorScheme.primary,
          foregroundColor: colorScheme.onPrimary,
        ),

        // Personnalisation des Card
        cardTheme: CardTheme(
          color: colorScheme.surface,
          elevation: 2,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
        ),

        // Personnalisation des ListTile
        listTileTheme: ListTileThemeData(
          iconColor: colorScheme.primary,
          textColor: colorScheme.onSurface,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
        ),

        // Personnalisation de la BottomNavigationBar
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
          backgroundColor: colorScheme.surface,
          selectedItemColor: colorScheme.primary,
          unselectedItemColor: colorScheme.onSurface.withValues(alpha: 0.6),
          elevation: 2,
        ),

        // Personnalisation de la sélection de texte
        textSelectionTheme: TextSelectionThemeData(
          cursorColor: colorScheme.primary,
          selectionColor: colorScheme.primary.withValues(alpha: 0.3),
          selectionHandleColor: colorScheme.primary,
        ),
      );

  List<ExtendedColor> get extendedColors => [];
}

class ExtendedColor {
  final Color seed, value;
  final ColorFamily light;
  final ColorFamily lightHighContrast;
  final ColorFamily lightMediumContrast;
  final ColorFamily dark;
  final ColorFamily darkHighContrast;
  final ColorFamily darkMediumContrast;

  const ExtendedColor({
    required this.seed,
    required this.value,
    required this.light,
    required this.lightHighContrast,
    required this.lightMediumContrast,
    required this.dark,
    required this.darkHighContrast,
    required this.darkMediumContrast,
  });
}

class ColorFamily {
  const ColorFamily({
    required this.color,
    required this.onColor,
    required this.colorContainer,
    required this.onColorContainer,
  });

  final Color color;
  final Color onColor;
  final Color colorContainer;
  final Color onColorContainer;
}

extension ThemeExtension on BuildContext {
  ThemeData get theme => Theme.of(this);
  ColorScheme get colorScheme => theme.colorScheme;
}
