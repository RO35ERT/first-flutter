import 'package:first_app/Home.dart';
import 'package:flutter/material.dart';


void main(){
  runApp(
    MaterialApp(
      home: const Home(),
      theme: ThemeData(
        primarySwatch: Colors.blue
      ),
    )
  );
}


