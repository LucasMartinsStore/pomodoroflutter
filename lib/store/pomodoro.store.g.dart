// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pomodoro.store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$PomodoroStore on _PomodoroStore, Store {
  final _$initialAtom = Atom(name: '_PomodoroStore.initial');

  @override
  bool get initial {
    _$initialAtom.reportRead();
    return super.initial;
  }

  @override
  set initial(bool value) {
    _$initialAtom.reportWrite(value, super.initial, () {
      super.initial = value;
    });
  }

  final _$minutesAtom = Atom(name: '_PomodoroStore.minutes');

  @override
  int get minutes {
    _$minutesAtom.reportRead();
    return super.minutes;
  }

  @override
  set minutes(int value) {
    _$minutesAtom.reportWrite(value, super.minutes, () {
      super.minutes = value;
    });
  }

  final _$secondsAtom = Atom(name: '_PomodoroStore.seconds');

  @override
  int get seconds {
    _$secondsAtom.reportRead();
    return super.seconds;
  }

  @override
  set seconds(int value) {
    _$secondsAtom.reportWrite(value, super.seconds, () {
      super.seconds = value;
    });
  }

  final _$timeWorkAtom = Atom(name: '_PomodoroStore.timeWork');

  @override
  int get timeWork {
    _$timeWorkAtom.reportRead();
    return super.timeWork;
  }

  @override
  set timeWork(int value) {
    _$timeWorkAtom.reportWrite(value, super.timeWork, () {
      super.timeWork = value;
    });
  }

  final _$restTimeAtom = Atom(name: '_PomodoroStore.restTime');

  @override
  int get restTime {
    _$restTimeAtom.reportRead();
    return super.restTime;
  }

  @override
  set restTime(int value) {
    _$restTimeAtom.reportWrite(value, super.restTime, () {
      super.restTime = value;
    });
  }

  final _$_PomodoroStoreActionController =
      ActionController(name: '_PomodoroStore');

  @override
  void init() {
    final _$actionInfo = _$_PomodoroStoreActionController.startAction(
        name: '_PomodoroStore.init');
    try {
      return super.init();
    } finally {
      _$_PomodoroStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void stop() {
    final _$actionInfo = _$_PomodoroStoreActionController.startAction(
        name: '_PomodoroStore.stop');
    try {
      return super.stop();
    } finally {
      _$_PomodoroStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void incrementTimeWork() {
    final _$actionInfo = _$_PomodoroStoreActionController.startAction(
        name: '_PomodoroStore.incrementTimeWork');
    try {
      return super.incrementTimeWork();
    } finally {
      _$_PomodoroStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void decrementTimeWork() {
    final _$actionInfo = _$_PomodoroStoreActionController.startAction(
        name: '_PomodoroStore.decrementTimeWork');
    try {
      return super.decrementTimeWork();
    } finally {
      _$_PomodoroStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void incrementTimeRest() {
    final _$actionInfo = _$_PomodoroStoreActionController.startAction(
        name: '_PomodoroStore.incrementTimeRest');
    try {
      return super.incrementTimeRest();
    } finally {
      _$_PomodoroStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void decrementTimeRest() {
    final _$actionInfo = _$_PomodoroStoreActionController.startAction(
        name: '_PomodoroStore.decrementTimeRest');
    try {
      return super.decrementTimeRest();
    } finally {
      _$_PomodoroStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
initial: ${initial},
minutes: ${minutes},
seconds: ${seconds},
timeWork: ${timeWork},
restTime: ${restTime}
    ''';
  }
}
