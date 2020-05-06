import 'package:flutter_doo_test/models/doo_model.dart';

extension CycleToText on Cycle {

  // todo 언어별 처리에 대한 고민이 필요!
  String toDisplayText() {
    if (this.isEveryday) {
      return 'Everyday';
    } else {
      String result = 'Every ';
      bool added = false;
      for (int i = 0; i < this.dayOfWeeks.length; i++) {
        if (this.dayOfWeeks[i]) {
          if (added) {
            result += ', ';
          }
          added = true;
          result += _idxToDayString(i);
        }
      }
      return result;
    }
  }

  String _idxToDayString(int i) {
    switch(i) {
      case 0: return 'Mon';
      case 1: return 'Tue';
      case 2: return 'Wed';
      case 3: return 'Thu';
      case 4: return 'Fri';
      case 5: return 'Sat';
      default: return 'Sun';
    }
  }
}
