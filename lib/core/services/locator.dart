import 'package:get_it/get_it.dart';

import 'local_storage.dart';

GetIt locator = GetIt.instance;

setupLocator() {
  locator.registerSingleton<LocalStorage>(LocalStorage());
}
