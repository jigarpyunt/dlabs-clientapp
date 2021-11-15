import 'package:flutter/material.dart';

class Template extends StatelessWidget {
  const Template({ Key? key , required this.template}) : super(key: key);

  final Widget template;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: true, 
        body: SafeArea(child: template, bottom: false),
    );
  }
}