
import 'package:flutter/material.dart';
import 'package:dlabs_clientapp/algorithms/responsive.dart';
import 'package:dlabs_clientapp/constants.dart';
import 'package:dlabs_clientapp/widgets/template_widget.dart';
import 'package:dlabs_clientapp/widgets/input_widget.dart';
import 'package:dlabs_clientapp/widgets/primary_button_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool isInput1Focused = true;
  bool isInput2Focused = false;
  @override
  Widget build(BuildContext context) {

    return Template(
      child: Container(
        decoration: kBackgroundLinearGradientDecoration,
        padding: EdgeInsets.symmetric(
          horizontal: 30 * Responsive.differenceWidth,
          vertical: 50 * Responsive.differenceHeight,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Row(
              children: <Widget>[
                Image(
                  image: const AssetImage('assets/images/applogo3x.png'),
                  width: 82 * Responsive.differenceWidth,
                  height: 99 * Responsive.differenceHeight,
                ),
                SizedBox(
                  width: 20 * Responsive.differenceWidth,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'DLABS',
                      style: kAppHeadingStyle,
                    ),
                    Text(
                      'CLIENT APP',
                      style: kAppHeadingStyle,
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 140 * Responsive.differenceHeight),
            PrimaryInput(
              labelText: "Registered Mobile",
              hintText: "Type in your mobile",
              isFocused: isInput1Focused,
              onTap: () {
                setState(() {
                  isInput1Focused = true;
                  isInput2Focused = false;
                });
              },
            ),
            PrimaryInput(
              labelText: "Password",
              hintText: "Type in your secret password",
              isFocused: isInput2Focused,
              onTap: () {
                setState(() {
                  isInput1Focused = false;
                  isInput2Focused = true;
                });
              },
            ),
            Container(
              padding: kCustomPaddingDecoration,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  const PrimaryButton(text: 'Log In'),
                  SizedBox(
                    height: 15 * Responsive.differenceHeight,
                  ),
                  Text(
                    'Forgot Password ?',
                    style: kGeneralLinksTextDecoration,
                  ),
                  SizedBox(
                    height: 10 * Responsive.differenceHeight,
                  ),
                  Row(
                    children: <Widget>[
                      Text(
                        'If you are new user ?',
                        style: kGeneralLinksTextDecoration,
                      ),
                      SizedBox(
                        width: 5 * Responsive.differenceWidth,
                      ),
                      Text(
                        'Click here',
                        style: kGeneralLinksTextDecoration.copyWith(
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
