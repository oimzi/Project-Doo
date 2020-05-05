import 'package:flutter_doo_test/models/doo_model.dart';
import 'package:hive/hive.dart';

part 'hive_doo_model.g.dart';

@HiveType(typeId: 0)
class HiveDooModel extends HiveObject{

  @HiveField(0)
  String title;

  @HiveField(1)
  String quotes;

  @HiveField(2)
  HiveCycleModel cycle;

  HiveDooModel();

  HiveDooModel.fromDooModel(DooModel doo)
      :title = doo.title,
        quotes = doo.quotes,
        cycle = HiveCycleModel.fromCycleModel(doo.cycle);

  DooModel toDooModel() => DooModel(title: title, quotes: quotes, cycle: cycle.toCycle());

}

@HiveType(typeId: 1)
class HiveCycleModel extends HiveObject{

  @HiveField(0)
  bool isEveryday;

  @HiveField(1)
  List<bool> dayOfWeeks;   // 0 -> 월요일 .. 6 -> 일요일

  HiveCycleModel();

  HiveCycleModel.fromCycleModel(Cycle cycle)
    : isEveryday = cycle.isEveryday,
      dayOfWeeks = cycle.dayOfWeeks;

  Cycle toCycle() => Cycle(dayOfWeeks: dayOfWeeks);
}