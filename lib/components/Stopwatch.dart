//ignore: file_names
// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:pomodoro/components/StopwacthButton.dart';
import 'package:pomodoro/store/pomodoro.store.dart';
import 'package:provider/provider.dart';

class Stopwatch extends StatelessWidget {
  const Stopwatch({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final store = Provider.of<PomodoroStore>(context);
    return Container(
      color: store.isWork() ? Color(0xfff28236) : Colors.green,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            store.isWork() ? 'Hora de trabalhar' : 'Hora de descansar',
            style: TextStyle(
              fontSize: 40,
              color: Colors.white,
            ),
            
          ),
          SizedBox(height: 20),
          Observer(builder: (_) =>  Text(
            '${store.minutes.toString().padLeft(2, '0')}:${store.seconds.toString().padLeft(2,'0')}',
            style:TextStyle(
              fontSize: 120,
              color: Colors.white,
            )
          ),),
          SizedBox(height: 10),
          Observer(builder: (_) =>          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
               if(!store.initial)
              Padding(
                padding: const EdgeInsets.only(right: 1),
                child: StopwatchButton(
                  text: 'Iniciar', 
                  icon: Icons.play_arrow,
                  click: store.init,
                ),
              ),
              if(store.initial)
              Padding(
                padding: const EdgeInsets.only(right: 1),
                child: StopwatchButton(
                text: 'Parar', 
                icon: Icons.stop,
                click: store.stop,
              ),
              ),
                Padding(
                  padding: const EdgeInsets.only(left: 1),
                  child: StopwatchButton(
                  text: 'Reniciar', 
                  icon: Icons.refresh,
                  click: store.restart,
              ),
                ),
            ],
          )),

        ],
      ),
    );
  }
}