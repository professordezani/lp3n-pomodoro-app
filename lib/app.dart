import 'dart:async';

import 'package:flutter/material.dart';

class App extends StatefulWidget {
  @override
  State<App> createState() => _AppState();
}

enum PomodoroState { green, red }

class _AppState extends State<App> {
  int seconds = 5;
  Timer? timer;
  var backgroundColor = Colors.green[50];
  var state = PomodoroState.green;

  void onTick(Timer _) {
    if (seconds > 0)
      setState(() => seconds--);
    else {
      setState(() {
        seconds = 5;
        if (state == PomodoroState.green) {
          backgroundColor = Colors.red[50];
          state = PomodoroState.red;
        } else {
          backgroundColor = Colors.green[50];
          state = PomodoroState.green;
        }
      });
    }
  }

  void add10Seconds() {
    setState(() => seconds += 10);
  }

  @override
  void initState() {
    super.initState();
    timer = Timer.periodic(Duration(seconds: 1), onTick);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Material(
        color: backgroundColor,
        child: SafeArea(
          child: Column(
            spacing: 32,
            mainAxisAlignment: .center,
            children: [
              Container(
                width: 125,
                height: 30,
                decoration: BoxDecoration(
                  color: Color.fromRGBO(77, 218, 110, 0.15),
                  border: Border.all(color: Colors.green[900]!),
                  borderRadius: BorderRadius.circular(25),
                ),
                child: Row(
                  mainAxisAlignment: .spaceEvenly,
                  children: [Icon(Icons.coffee_outlined), Text("Short Break")],
                ),
              ),
              Text(
                "05\n$seconds",
                style: TextStyle(
                  fontSize: 256,
                  fontWeight: FontWeight.w400,
                  color: Colors.green[900],
                  height: 0.85,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                spacing: 16,
                children: [
                  InkWell(
                    borderRadius: BorderRadius.circular(32),
                    splashColor: Colors.green[100],
                    onTap: add10Seconds,
                    child: Container(
                      width: 80,
                      height: 80,
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(77, 218, 110, 0.15),
                        borderRadius: BorderRadius.circular(32),
                      ),
                      child: Icon(Icons.forward_10_outlined, size: 32),
                    ),
                  ),
                  InkWell(
                    borderRadius: BorderRadius.circular(32),
                    splashColor: Colors.green[300],
                    onTap: () {},
                    child: Container(
                      width: 102,
                      height: 96,
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(77, 218, 110, 0.62),
                        borderRadius: BorderRadius.circular(32),
                      ),
                      child: Icon(Icons.play_arrow, size: 32),
                    ),
                  ),
                  InkWell(
                    borderRadius: BorderRadius.circular(32),
                    splashColor: Colors.green[100],
                    onTap: () {},
                    child: Container(
                      width: 80,
                      height: 80,
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(77, 218, 110, 0.15),
                        borderRadius: BorderRadius.circular(32),
                      ),
                      child: Icon(Icons.fast_forward, size: 32),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
