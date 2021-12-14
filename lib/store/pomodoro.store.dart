
// ignore_for_file: unused_element, prefer_const_constructors

import 'dart:async';

import 'package:mobx/mobx.dart';

part 'pomodoro.store.g.dart';

class PomodoroStore =  _PomodoroStore with _$PomodoroStore;

// ignore: constant_identifier_names
enum TypeInterval {WORK, REST}

abstract class _PomodoroStore with Store {
  @observable
  bool  initial = false;
  
  @observable
  int minutes = 2;

  @observable
  int seconds = 0;

  @observable
  int timeWork = 2;

  @observable
  int restTime = 1;

  @observable
  TypeInterval typeInterval = TypeInterval.REST;

  Timer? stopwatch;

  @action
  void init(){
      initial = true;
      stopwatch = Timer.periodic(Duration(milliseconds: 50), (timer) { });
        if(minutes == 0 && seconds == 0){
        _toggleTypeInterval();
        } else if(seconds == 0){
        seconds = 59;
        minutes--;
        }else{
        seconds--;
        }
      
  }

  @action
  void stop(){
      initial = false;
      stopwatch?.cancel();
  }

   @action
  void restart(){
      initial = false;
      stop();
  }

  @action
  void incrementTimeWork(){
      timeWork++;
  }

  @action
  void decrementTimeWork(){
      timeWork--;
  }

  @action
  void incrementTimeRest(){
      restTime++;
  }

  @action
  void decrementTimeRest(){
      restTime--;
  }

  bool isWork(){
    return typeInterval == TypeInterval.WORK;
  }

    bool isRest(){
    return typeInterval == TypeInterval.REST;
  }
   void _toggleTypeInterval(){
     if(isWork()){
       typeInterval = TypeInterval.REST;
       minutes = restTime;
     }else{
         typeInterval = TypeInterval.REST;
         minutes = timeWork;
     }
     seconds = 0;
   }

}