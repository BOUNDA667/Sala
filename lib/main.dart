import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:sala/core/services/local_storage.dart';
import 'package:sala/core/services/locator.dart';
import 'package:sala/core/services/navigation_service.dart';
import 'package:sala/core/utils/localization_notifier.dart';
import 'package:sala/core/utils/theme_notifier.dart';
import 'package:sala/core/utils/theme_utils.dart';
import 'package:sala/l10n/app_localizations.dart';
import 'package:sala/views/auth_pages/login_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);

  setupLocator();
  await locator<LocalStorage>().initializeLocaleStorage();

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});
  final MyThemes myThemes = MyThemes();

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => ThemeNotifier()),
        ChangeNotifierProvider(create: (_) => LocalizationNotifier()),
      ],
      child: Consumer2<ThemeNotifier, LocalizationNotifier>(
        builder: (context, themeNotifier, localizationNotifier, child) {
          return MaterialApp(
            navigatorKey: NavigationService().navigatorKey,
            theme: myThemes.light(),
            darkTheme: myThemes.dark(),
            themeMode: themeNotifier.themeMode,
            locale: localizationNotifier.currentLocale,
            localizationsDelegates: AppLocalizations.localizationsDelegates,
            supportedLocales: AppLocalizations.supportedLocales,
            debugShowCheckedModeBanner: false,
            home: LoginPage(),
          );
        },
      ),
    );
  }
}
