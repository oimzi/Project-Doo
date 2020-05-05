import 'package:flutter_doo_test/app/locator.dart';
import 'package:flutter_doo_test/models/doo_model.dart';
import 'package:hive/hive.dart';

import 'hive_service.dart';
import 'models/hive_doo_model.dart';
import 'storage_service.dart';

class HiveStorageService extends StorageService {
  Box _box;

  @override
  init() async {
    locator<HiveService>().init();
    _box = await Hive.openBox('doo');
  }

  @override
  void save(DooModel doo) {
    _box.add(HiveDooModel.fromDooModel(doo));
  }

  @override
  List<DooModel> getAll() {
    var values = _box.values;
    List<DooModel> list = [];
    values.forEach((e) {
      if (e is HiveDooModel) {
        list.add(e.toDooModel());
      }
    });

    return list;
  }

  @override
  void deleteAll() {
    _box.deleteAll(_box.keys);
  }
}
