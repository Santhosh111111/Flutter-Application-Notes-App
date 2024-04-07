import 'package:flutter/material.dart';
import 'package:notes_main/SCREENS/homepage.dart';

void main() {
  runApp( const Notes());
}

class Notes extends StatelessWidget {
  const Notes({super.key});

  String get title => title;

  String get body => body;

  

  @override
  Widget build(BuildContext context) {
    return const  MaterialApp(
    title: 'Notes',
    debugShowCheckedModeBanner: false,
    color: Colors.red,
    home: const Homepage()
  );
  }
}