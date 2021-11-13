import 'package:flutter/material.dart';

class Template extends StatelessWidget {
  const Template({ Key? key , required this.child}) : super(key: key);

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        resizeToAvoidBottomInset: true, 
        body: SafeArea(child: child, bottom: false),
      ),
    );
  }
}