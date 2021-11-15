import 'package:dlabs_clientapp/screens/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:dlabs_clientapp/algorithms/responsive.dart';
import 'package:dlabs_clientapp/constants.dart';
import 'package:dlabs_clientapp/widgets/template_widget.dart';
import 'package:dlabs_clientapp/widgets/input_widget.dart';
import 'package:dlabs_clientapp/widgets/primary_button_widget.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  static String pageId = 'register_screen';

  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  bool isInput1Focused = true;
  bool isInput2Focused = false;
  bool isInput3Focused = false;
  bool isInput4Focused = false;
  bool isPasswordVisible = false;
  @override
  Widget build(BuildContext context) {
    return Template(
      template: Container(
        constraints:
            BoxConstraints(minHeight: MediaQuery.of(context).size.height),
        decoration: kBackgroundLinearGradientDecoration,
        padding: EdgeInsets.symmetric(
          horizontal: 30 * Responsive.differenceWidth,
          vertical: 50 * Responsive.differenceHeight,
        ),
        child: SingleChildScrollView(
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
              SizedBox(height: 80 * Responsive.differenceHeight),
              GestureDetector(
                onTap: () {
                  setState(() {
                    isInput1Focused = true;
                    isInput2Focused = false;
                    isInput3Focused = false;
                    isInput4Focused = false;
                  });
                },
                child: PrimaryInput(
                  labelText: "Full Name",
                  hintText: "Type in your full name",
                  isFocused: isInput1Focused,
                  onTap: () {
                    setState(() {
                      isInput1Focused = true;
                      isInput2Focused = false;
                      isInput3Focused = false;
                      isInput4Focused = false;
                    });
                  },
                ),
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    isInput1Focused = false;
                    isInput2Focused = true;
                    isInput3Focused = false;
                    isInput4Focused = false;
                  });
                },
                child: PrimaryInput(
                  labelText: "Mobile",
                  hintText: "Type in your mobile",
                  isFocused: isInput2Focused,
                  onTap: () {
                    setState(() {
                      isInput1Focused = false;
                      isInput2Focused = true;
                      isInput3Focused = false;
                      isInput4Focused = false;
                    });
                  },
                ),
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    isInput1Focused = false;
                    isInput2Focused = false;
                    isInput3Focused = true;
                    isInput4Focused = false;
                  });
                },
                child: PrimaryInput(
                  labelText: "Email",
                  hintText: "Type in your valid email",
                  isFocused: isInput3Focused,
                  onTap: () {
                    setState(() {
                      isInput1Focused = false;
                      isInput2Focused = false;
                      isInput3Focused = true;
                      isInput4Focused = false;
                    });
                  },
                ),
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    isInput1Focused = false;
                    isInput2Focused = false;
                    isInput3Focused = false;
                    isInput4Focused = true;
                  });
                },
                child: PrimaryInput(
                  labelText:  "Create a strong passsword",
                  hintText: "Type in your secret password",
                  isFocused: isInput2Focused,
                  isObscureText: !isPasswordVisible,
                  trailIcon:  GestureDetector(
                    onTap: () {
                      setState(() {
                        isPasswordVisible = !isPasswordVisible;
                      });
                    },
                    child: Icon(
                      isPasswordVisible == false ? Icons.visibility_off : Icons.visibility,
                      color: Colors.white,
                    ),
                  ),
                  onTap: () {
                    setState(() {
                      isInput1Focused = false;
                      isInput2Focused = false;
                      isInput3Focused = false;
                      isInput4Focused = true;
                    });
                  },
                ),
              ),
              Container(
                padding: kCustomPaddingDecoration,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    const PrimaryButton(text: 'Next'),
                    SizedBox(
                      height: 15 * Responsive.differenceHeight,
                    ),
                    Row(
                      children: <Widget>[
                        Text(
                          'If you already a user ?',
                          style: kGeneralLinksTextDecoration,
                        ),
                        SizedBox(
                          width: 5 * Responsive.differenceWidth,
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.pushNamed(context, LoginScreen.pageId);
                          },
                          child: Text(
                            'Click here',
                            style: kGeneralLinksTextDecoration.copyWith(
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
