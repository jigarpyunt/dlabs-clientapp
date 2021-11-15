import 'package:dlabs_clientapp/screens/login_screen.dart';
import 'package:dlabs_clientapp/widgets/template_widget.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Template(
        template: LoginScreen(),
      ),
    );
  }
}
