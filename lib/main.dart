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
       body: Center(
         child: Text(Strings.bodytext,
          style: TextStyle(
             fontSize: 30,
              color: Colors.deepOrange,
            fontFamily: 'ArchitectsDaughter',
          ),
         ),
       ),
       floatingActionButton: FloatingActionButton(
         backgroundColor: Colors.deepOrange,
         child: Text("Click"),
       ),
     ),
   );
  }
}