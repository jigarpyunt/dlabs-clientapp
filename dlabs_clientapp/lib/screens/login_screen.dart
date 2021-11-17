import 'package:dlabs_clientapp/screens/forgot_password_screen.dart';
import 'package:dlabs_clientapp/screens/register_screen.dart';
import 'package:flutter/material.dart';
import 'package:dlabs_clientapp/algorithms/responsive.dart';
import 'package:dlabs_clientapp/constants.dart';
import 'package:dlabs_clientapp/widgets/template_widget.dart';
import 'package:dlabs_clientapp/widgets/input_widget.dart';
import 'package:dlabs_clientapp/widgets/primary_button_widget.dart';


class LoginScreen extends StatefulWidget {
  const LoginScreen({ Key? key }) : super(key: key);

  static String pageId = 'login_screen';

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool isInput1Focused = true;
  bool isInput2Focused = false;
  bool isPasswordVisible = false;


  
  @override
  Widget build(BuildContext context) {
    Responsive responsiveCalc = Responsive();
    // responsiveCalc.setDeviceDimensions(width: window.physicalSize.width, height: window.physicalSize.height);
    responsiveCalc.setDeviceDimensions(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height);
        
    return Template(
      template: Container(
        constraints: BoxConstraints(minHeight:  MediaQuery.of(context).size.height),
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
              SizedBox(height: 140 * Responsive.differenceHeight),
              GestureDetector(
                onTap: () {
                    setState(() {
                      isInput1Focused = true;
                      isInput2Focused = false;
                    });
                },
                child: PrimaryInput(
                  labelText: "Registered Mobile",
                  hintText: "Type in your mobile",
                  isFocused: isInput1Focused,
                  onTap: (){
                    setState(() {
                      isInput1Focused = true;
                      isInput2Focused = false;
                    });
                  }
                ),
              ),
              GestureDetector(
                onTap: (){
                  setState((){
                    isInput1Focused = false;
                    isInput2Focused = true;
                  });
                },
                child: PrimaryInput(
                  labelText: "Password",
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
                      isInput2Focused = true;
                    });
                  },
                ),
              ),
              Container(
                padding: kCustomPaddingDecoration,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    const PrimaryButton(text: 'Log In'),
                    SizedBox(
                      height: 20 * Responsive.differenceHeight,
                    ),
                    Row(
                      children: <Widget>[
                        Text(
                          'Forgot Password?',
                          style: kGeneralLinksTextDecoration,
                        ),
                        SizedBox(
                          width: 5 * Responsive.differenceWidth,
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.pushNamed(context, ForgotPasswordScreen.pageId);
                          },
                          child: Text(
                            'Click here',
                            style: kGeneralLinksTextDecoration.copyWith(
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20 * Responsive.differenceHeight,
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
                        GestureDetector(
                          onTap: () {
                            Navigator.pushNamed(context, RegisterScreen.pageId);
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