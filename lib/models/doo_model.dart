import '../app/c.dart' as C;

class DooModel {
  String title;
  String quotes;
  Cycle cycle;

  DooModel({this.title, this.quotes = C.DEFAULT_QUOTES, this.cycle});

  @override
  String toString() {
    return 'DooModel: '
        'title : $title\n'
        '_ quotes : $quotes\n'
        '_ cycld : $cycle';
  }
}

class Cycle {
  bool _isEveryday = true;
  List<bool> _dayOfWeeks = [true, true, true, true, true, true, true]; // 0 -> 월요일 .. 6 -> 일요일

  bool get isEveryday => _isEveryday;
  List<bool> get dayOfWeeks => _dayOfWeeks;

  Cycle({List<bool> dayOfWeeks}) {
    if (dayOfWeeks != null ) {
      assert(dayOfWeeks.length == 7);
      _dayOfWeeks.clear();
      _dayOfWeeks.addAll(dayOfWeeks);
      _checkIsEveryday();
    }
  }
  
  _checkIsEveryday() {
    _isEveryday = !_dayOfWeeks.contains(false);
  }

  setDayCycle(List<bool> dayOfWeeks) {
    if (dayOfWeeks != null ) {
      assert(dayOfWeeks.length == 7);
      _dayOfWeeks.clear();
      _dayOfWeeks.addAll(dayOfWeeks);
      _checkIsEveryday();
    }
  }

  setEveryDay(bool repeat) {
    _dayOfWeeks.clear();
    _dayOfWeeks.addAll(List.generate(7, (idx)=> repeat));
    _checkIsEveryday();
  }

  @override
  String toString() {
    return 'isEveryday = $_isEveryday, $_dayOfWeeks';
  }
}