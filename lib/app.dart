import 'package:flutter/material.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Material(
        color: Colors.green[50],
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
                "05\n00",
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
                    onTap: () {},
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
                    splashColor: Colors.green[100],
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
