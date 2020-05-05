import 'package:flutter_doo_test/models/doo_model.dart';
import 'package:hive/hive.dart';

abstract class StorageService {
  Future init();

  void save(DooModel doo);

  List<DooModel> getAll();

  void deleteAll();

}