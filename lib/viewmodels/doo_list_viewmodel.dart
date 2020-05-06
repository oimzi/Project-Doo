import 'package:flutter_doo_test/models/doo_model.dart';
import 'package:stacked/stacked.dart';

class DooListViewModel extends BaseViewModel {

  List<DooModel> _dooLists;

  List<DooModel> get dooLists => _dooLists;

  DooListViewModel() {
    // todo : init lists
    // tmp list
    _dooLists = genTmpLists();
  }

  List<DooModel> genTmpLists() {
    return [
      DooModel(title: 'Running in the morning',
          cycle: Cycle(
              dayOfWeeks: [true, false, true, false, false, false, false])),

      DooModel(title: 'Drink 1L water', quotes: '나는 물 먹는 하마!'),
      DooModel(title: 'Study flutter 1 hour', quotes: '탈출 가즈아!'),
    ];
  }

}