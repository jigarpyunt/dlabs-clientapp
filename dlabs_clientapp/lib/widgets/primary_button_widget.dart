import 'package:flutter/material.dart';
import 'package:dlabs_clientapp/constants.dart';

class PrimaryButton extends StatelessWidget {
  const PrimaryButton({Key? key , required this.text }) : super(key: key);

  final String text;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      child: Text(text, style: kPrimaryButtonTextDecoration),
      style: kPrimaryButtonDecoration,
    );
  }
}
