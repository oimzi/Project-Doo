import 'package:flutter_doo_test/app/locator.dart';
import 'package:flutter_doo_test/models/doo_model.dart';
import 'package:flutter_doo_test/services/storage_service.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_doo_test/ui/utils.dart';

void main() {
  group('Service Test', () {

    setUpAll(() {
      setupLocator();
      locator.allowReassignment = true;
    });

    test('simple test', () {
      var cycle = Cycle(dayOfWeeks: [true, false, false, false, false, false, false ]);
      print(cycle.toDisplayText());
    });

    test('dooModel test', () {
      var cycle = Cycle();
      cycle.setDayCycle([true, true, true, false, true, true, true]);

      var dooModel = DooModel(title: 'first job', cycle: cycle);
      print(dooModel);
    });

    test('storage test', () async {
      StorageService storageService = locator<StorageService>();
      await storageService.init();

      storageService.deleteAll();
      var cycle = Cycle();
      cycle.setDayCycle([true, true, true, false, true, true, true]);

      var dooModel = DooModel(title: 'first job', quotes: 'abcd', cycle: cycle);

      storageService.save(dooModel);

      var list = storageService.getAll();
      expect(list.length == 1, true);
      print(list[0]);
//      expect(list[0].title == 'running 1 hour', true);
    });

  });
}