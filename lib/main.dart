import 'package:flutter/material.dart';
import 'package:flutter_18_march/pages/choose_location.dart';
import 'package:flutter_18_march/pages/new_lcoation.dart';
import 'package:flutter_18_march/pages/home.dart';

void main(){
  runApp(MaterialApp(
    initialRoute: '/home',
    routes: {
      '/home': (context) => Home(),
      '/location': (context) => ChooseLocation(),
      '/newlocation': (context) => NewLocation(),
    },
  ));
}




