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
       body: Row(
         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
         children: [
           Column(
             children: [
               Container(
                 color: Colors.blue,
                 child: Text("Skillto"),
                 padding: EdgeInsets.all(30),

               ),
               FlatButton(
                 color: Colors.deepOrange,
                 child: Text("Skillto"),
                 onPressed: (){},
               ),
               Container(
                 color: Colors.green,
                 child: Text("Skillto"),
                 padding: EdgeInsets.all(30),

               ),
             ],
           ),
           Column(
             children: [
               Container(
                 color: Colors.blue,
                 child: Text("Skillto"),
                 padding: EdgeInsets.all(30),

               ),
               FlatButton(
                 color: Colors.deepOrange,
                 child: Text("Skillto"),
                 onPressed: (){},
               ),
               Container(
                 color: Colors.green,
                 child: Text("Skillto"),
                 padding: EdgeInsets.all(30),

               ),
             ],
           ),
           Column(
             children: [
               Container(
                 color: Colors.blue,
                 child: Text("Skillto"),
                 padding: EdgeInsets.all(30),

               ),
               FlatButton(
                 color: Colors.deepOrange,
                 child: Text("Skillto"),
                 onPressed: (){},
               ),
               Container(
                 color: Colors.green,
                 child: Text("Skillto"),
                 padding: EdgeInsets.all(30),

               ),
             ],
           ),
         ],
       ),
     ),
   );
  }
}