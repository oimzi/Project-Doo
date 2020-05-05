import 'package:hive/hive.dart';

import 'models/hive_doo_model.dart';

class HiveService {
  init() {
    Hive.init('./');
    Hive.registerAdapter(HiveCycleModelAdapter());
    Hive.registerAdapter(HiveDooModelAdapter());
  }
}