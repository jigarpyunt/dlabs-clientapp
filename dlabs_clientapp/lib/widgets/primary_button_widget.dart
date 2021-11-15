import 'package:flutter/material.dart';
import 'package:dlabs_clientapp/constants.dart';

class PrimaryButton extends StatelessWidget {
  const PrimaryButton({Key? key , required this.text, this.onTap }) : super(key: key);

  final String text;
  final dynamic onTap;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onTap,
      child: Text(text, style: kPrimaryButtonTextDecoration),
      style: kPrimaryButtonDecoration,
    );
  }
}
