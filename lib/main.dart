import 'package:flutter/material.dart';
import 'strings.dart';

void main(){
  runApp(FlutterBootcamp());
}

class FlutterBootcamp extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
   return MaterialApp(
     home: Scaffold(
       appBar: AppBar(
         centerTitle: true,
         backgroundColor: Colors.deepOrange,
         title: Text(Strings.titletext),
       ),
       body: Column(
         children: [
           Row(
             children: [
               Expanded(
                 flex: 1,
                 child: Container(
                   padding: EdgeInsets.all(20),
                   color: Colors.deepOrange,
                   child: Text("A"),
                 ),
               ),
               Expanded(
                 flex: 4,
                 child: Container(
                   padding: EdgeInsets.all(20),
                   color: Colors.blue,
                   child: Text("B"),
                 ),
               ),
               Expanded(
                 flex: 2,
                 child: Container(
                   padding: EdgeInsets.all(20),
                   color: Colors.green,
                   child: Text("C"),
                 ),
               ),
               Expanded(
                 flex: 4,
                 child: Container(
                   padding: EdgeInsets.all(20),
                   color: Colors.yellow,
                   child: Text("D"),
                 ),
               ),
             ],
           ),
           Divider(
           ),
           Row(
             children: [
               Expanded(
                 flex: 4,
                 child: Container(
                   padding: EdgeInsets.all(20),
                   color: Colors.deepOrange,
                   child: Text("A"),
                 ),
               ),
               Expanded(
                 flex: 3,
                 child: Container(
                   padding: EdgeInsets.all(20),
                   color: Colors.blue,
                   child: Text("B"),
                 ),
               ),
               Expanded(
                 flex: 3,
                 child: Container(
                   padding: EdgeInsets.all(20),
                   color: Colors.green,
                   child: Text("C"),
                 ),
               ),
               Expanded(
                 flex: 1,
                 child: Container(
                   padding: EdgeInsets.all(20),
                   color: Colors.yellow,
                   child: Text("D"),
                 ),
               ),
             ],
           ),
           SizedBox(
             height: 20,
           ),
           Row(
             children: [
               Expanded(
                 flex: 2,
                 child: CircleAvatar(
                   backgroundImage: AssetImage('assets/sky.jpg'),
                   radius: 100,
                 ),
               ),
               Expanded(
                 flex: 1,
                 child: Container(
                   padding: EdgeInsets.all(20),
                   color: Colors.blue,
                   child: Text("B"),
                 ),
               ),
               Expanded(
                 flex: 2,
                 child: Container(
                   padding: EdgeInsets.all(20),
                   color: Colors.green,
                   child: Text("C"),
                 ),
               ),
               Expanded(
                 flex: 2,
                 child: Container(
                   padding: EdgeInsets.all(20),
                   color: Colors.yellow,
                   child: Text("D"),
                 ),
               ),
             ],
           ),
         ],
       ),
     ),
   );
  }
}