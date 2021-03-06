import 'package:flutter/material.dart';
import 'dart:async';
import 'dart:convert';


void main(){
  runApp(MaterialApp(
    home: QuickTimer(),
  ));
}

class QuickTimer extends StatefulWidget{
  @override
  _QuickTimer createState() => _QuickTimer();

}

class _QuickTimer extends State<QuickTimer>{

  static const duration = const Duration(seconds: 5);
  bool isActive = false;
  Timer timer;
  int secondspassed = 0;

  void ticker(){
    if (isActive){
      setState(() {
        secondspassed = secondspassed + 1;
      });
    }
  }

  void initState(){
    super.initState();
    timer = Timer.periodic(duration, (timer) {
      ticker();
    });
  }

  @override
  Widget build(BuildContext context) {

    int seconds = secondspassed % 60; // 66 = 6 | 125 % 60 =  5 | 2
    int minutes = secondspassed ~/ 60; // 125 ~/ 2 and 5
    int hours = secondspassed ~/ (60*60);

    return Scaffold(
      appBar: AppBar(
        title: Text("Quick Timer"),
        backgroundColor: Colors.deepOrange,
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TimerContainer(
                  label: "HH",
                  value: hours.toString(),
                ),
                TimerContainer(
                  label: "MM",
                  value: minutes.toString(),
                ),
                TimerContainer(
                  label: "SS",
                  value: seconds.toString(),
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.all(20),
              child: RaisedButton(
                child: Text(isActive ? 'Stop': 'Start'),
                onPressed: (){
                  setState(() {
                    isActive = !isActive;
                  });
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class TimerContainer extends StatelessWidget{

  TimerContainer({this.label,this.value});

  String label;
  String value;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10),
      padding: EdgeInsets.all(10),
      decoration: new BoxDecoration(
        color: Colors.black87,
        borderRadius: new BorderRadius.circular(10),
      ),
      child: Column(
        children: [
          Text(
            "$value",
            style: TextStyle(
              color: Colors.white,
              fontSize: 30
            ),
          ),
          Text(
            "$label",
            style: TextStyle(
              color: Colors.white,
              fontSize: 30,
            ),
          ),
        ],
      ),
    );
  }

}






