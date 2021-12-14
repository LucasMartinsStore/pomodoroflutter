// ignore_for_file: file_names, prefer_const_literals_to_create_immutables, prefer_const_constructors, unused_import
import 'package:flutter/material.dart';
import 'package:pomodoro/components/EntryTime.dart';
import 'package:pomodoro/components/Stopwatch.dart';
import 'package:pomodoro/store/pomodoro.store.dart';
import 'package:provider/provider.dart';

class Pomodoro extends StatelessWidget {
  const Pomodoro({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final store = Provider.of<PomodoroStore>(context);
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Stopwatch(),
            ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical:40),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                    EntryTime(
                title: 'Trabalhando', 
                value: store.timeWork,
                inc: store.incrementTimeWork,
                dec: store.decrementTimeWork,
              ),
              EntryTime(
                title: 'Descanso', 
                value: store.restTime,
                inc: store.incrementTimeRest,
                dec: store.decrementTimeRest,
                
                ),
              ],),
          )
        ],
        
      ),
    );
  }
}