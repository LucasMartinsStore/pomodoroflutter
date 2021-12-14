// ignore_for_file: file_names, prefer_const_literals_to_create_immutables, prefer_const_constructors, unnecessary_this, unused_local_variable
import 'package:flutter/material.dart';
import 'package:pomodoro/store/pomodoro.store.dart';
import 'package:provider/provider.dart';

class EntryTime extends StatelessWidget {
   final String title;
   final int value;
   final void Function()? inc;
   final void Function()? dec;


  const EntryTime({ 
    Key? key,
     required  this.title,
    required this.value,
    this.inc,
    this.dec,
   }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final store = Provider.of<PomodoroStore>(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          this.title,
          style: TextStyle(
            fontSize: 25,
          ),
        ),
        SizedBox(height: 10,),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
              ElevatedButton(
                onPressed: this.dec, 
                child: Icon(
                  Icons.arrow_downward, 
                  color: Colors.white,
                ),
                style: ElevatedButton.styleFrom(
                  shape: CircleBorder(),
                  padding: EdgeInsets.all(15),
                  primary: store.isWork() ? Colors.red : Colors.green,
                ),
              ),
              Text(
                '${this.value} min',
                style:  TextStyle(
                  fontSize: 18,
                ),
                ),
                ElevatedButton(
                onPressed: this.inc, 
                child: Icon(
                  Icons.arrow_upward, 
                  color: Colors.white,
                ),
                style: ElevatedButton.styleFrom(
                  shape: CircleBorder(),
                  padding: EdgeInsets.all(15),
                  primary: store.isWork() ? Colors.red : Colors.green,
                ),
              ),
          ],
        ),
      ],
    );
  }
}