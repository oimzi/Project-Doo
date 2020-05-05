import 'package:flutter_doo_test/services/hive_service.dart';
import 'package:flutter_doo_test/services/hive_storage_service.dart';
import 'package:flutter_doo_test/services/storage_service.dart';
import 'package:get_it/get_it.dart';
import 'package:stacked_services/stacked_services.dart';

final locator = GetIt.instance;

void setupLocator() {
  locator.registerLazySingleton<NavigationService>(() => NavigationService());
  locator.registerLazySingleton<DialogService>(() => DialogService());
  locator.registerLazySingleton<StorageService>(() => HiveStorageService());
  locator.registerLazySingleton<HiveService>(() => HiveService());
}

