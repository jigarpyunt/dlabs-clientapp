import 'package:dlabs_clientapp/screens/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:dlabs_clientapp/algorithms/responsive.dart';
import 'package:dlabs_clientapp/constants.dart';
import 'package:dlabs_clientapp/widgets/template_widget.dart';
import 'package:dlabs_clientapp/widgets/input_widget.dart';
import 'package:dlabs_clientapp/widgets/primary_button_widget.dart';

class ForgotPasswordScreen extends StatefulWidget {
  const ForgotPasswordScreen({Key? key}) : super(key: key);

  static String pageId = 'forgot_password_screen';

  @override
  _ForgotPasswordScreenState createState() => _ForgotPasswordScreenState();
}

class _ForgotPasswordScreenState extends State<ForgotPasswordScreen> {
  bool isRegisteredMobileInputFocused = true;
  bool isVerifyOTPInputFocused = true;
  bool isNewPasswordInputFocused = true;
  bool isConfirmNewPasswordInputFocused = false;

  Map<String, bool> steps = {
    'step1': true,
    'step2': false,
    'step3': false,
  };

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
              SizedBox(height: 20 * Responsive.differenceHeight),
              Container(
                padding: kCustomPaddingDecoration,
                child: Row(
                  children: <Widget>[
                    Container(
                      width: 40.0,
                      height: 40.0,
                      constraints:
                          const BoxConstraints(maxWidth: 10.0, maxHeight: 10.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.0),
                        color: steps['step1'] == true
                            ? Colors.white
                            : const Color.fromRGBO(255, 255, 255, 0.53),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Container(
                      width: 40.0,
                      height: 40.0,
                      constraints:
                          const BoxConstraints(maxWidth: 10.0, maxHeight: 10.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.0),
                        color: steps['step1'] == true && steps['step2'] == true
                            ? Colors.white
                            : const Color.fromRGBO(255, 255, 255, 0.53),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Container(
                      width: 40.0,
                      height: 40.0,
                      constraints:
                          const BoxConstraints(maxWidth: 10.0, maxHeight: 10.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.0),
                        color: steps['step1'] == true &&
                                steps['step2'] == true &&
                                steps['step3'] == true
                            ? Colors.white
                            : const Color.fromRGBO(255, 255, 255, 0.53),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20 * Responsive.differenceHeight),
              steps['step1'] == true &&
                      steps['step2'] == false &&
                      steps['step3'] == false
                  ? Column(
                      children: <Widget>[
                        Column(
                          children: <Widget>[
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  isRegisteredMobileInputFocused = true;
                                });
                              },
                              child: PrimaryInput(
                                labelText: "Registered Mobile",
                                hintText: "Type in your mobile number",
                                isFocused: isRegisteredMobileInputFocused,
                                onTap: () {
                                  setState(() {
                                    isRegisteredMobileInputFocused = true;
                                  });
                                },
                              ),
                            ),
                          ],
                        ),
                        Container(
                          padding: kCustomPaddingDecoration,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              PrimaryButton(
                                text: 'Next',
                                onTap: () {
                                  setState(() {
                                    steps['step2'] = true;
                                  });
                                },
                              ),
                              SizedBox(
                                height: 15 * Responsive.differenceHeight,
                              ),
                              Row(
                                children: <Widget>[
                                  Text(
                                    'I remembered my password ?',
                                    style: kGeneralLinksTextDecoration,
                                  ),
                                  SizedBox(
                                    width: 5 * Responsive.differenceWidth,
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      Navigator.pushNamed(
                                        context,
                                        LoginScreen.pageId,
                                      );
                                    },
                                    child: Text(
                                      'Click here',
                                      style:
                                          kGeneralLinksTextDecoration.copyWith(
                                              fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        )
                      ],
                    )
                  : steps['step1'] == true &&
                          steps['step2'] == true &&
                          steps['step3'] == false
                      ? // Checking Condition if step2 is true
                      Column(
                          children: <Widget>[
                            Column(
                              children: <Widget>[
                                GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      isVerifyOTPInputFocused = true;
                                    });
                                  },
                                  child: PrimaryInput(
                                    labelText: "Verify OTP",
                                    hintText: "Type in 6 digit otp",
                                    isFocused: isVerifyOTPInputFocused,
                                    onTap: () {
                                      setState(() {
                                        isVerifyOTPInputFocused = true;
                                      });
                                    },
                                  ),
                                ),
                              ],
                            ),
                            Container(
                              padding: kCustomPaddingDecoration,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  PrimaryButton(
                                    text: 'Verify',
                                    onTap: () {
                                      setState(() {
                                        steps['step3'] = true;
                                      });
                                    },
                                  ),
                                  SizedBox(
                                    height: 15 * Responsive.differenceHeight,
                                  ),
                                  Row(
                                    children: <Widget>[
                                      Text(
                                        'Didn\'t recieve?',
                                        style: kGeneralLinksTextDecoration,
                                      ),
                                      SizedBox(
                                        width: 5 * Responsive.differenceWidth,
                                      ),
                                      GestureDetector(
                                        onTap: () {},
                                        child: Text(
                                          'Resend',
                                          style: kGeneralLinksTextDecoration
                                              .copyWith(
                                                  fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 15 * Responsive.differenceHeight,
                                  ),
                                  Row(
                                    children: <Widget>[
                                      Text(
                                        'I remembered my password?',
                                        style: kGeneralLinksTextDecoration,
                                      ),
                                      SizedBox(
                                        width: 5 * Responsive.differenceWidth,
                                      ),
                                      GestureDetector(
                                        onTap: () {
                                          Navigator.pushNamed(
                                            context,
                                            LoginScreen.pageId,
                                          );
                                        },
                                        child: Text(
                                          'Click Here',
                                          style: kGeneralLinksTextDecoration
                                              .copyWith(
                                                  fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            )
                          ],
                        )
                      : Column(
                          children: <Widget>[
                            Column(
                              children: <Widget>[
                                GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      isNewPasswordInputFocused = true;
                                      isConfirmNewPasswordInputFocused = false;
                                    });
                                  },
                                  child: PrimaryInput(
                                    labelText: "New Password",
                                    hintText:
                                        "Type in your new secret password",
                                    isFocused: isNewPasswordInputFocused,
                                    onTap: () {
                                      setState(() {
                                        isNewPasswordInputFocused = true;
                                        isConfirmNewPasswordInputFocused =
                                            false;
                                      });
                                    },
                                  ),
                                ),
                                GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      isNewPasswordInputFocused = false;
                                      isConfirmNewPasswordInputFocused = true;
                                    });
                                  },
                                  child: PrimaryInput(
                                    labelText: "Confirm New Password",
                                    hintText:
                                        "Type in again your new secret password",
                                    isFocused: isConfirmNewPasswordInputFocused,
                                    onTap: () {
                                      setState(() {
                                        isNewPasswordInputFocused = false;
                                        isConfirmNewPasswordInputFocused = true;
                                      });
                                    },
                                  ),
                                ),
                              ],
                            ),
                            Container(
                              padding: kCustomPaddingDecoration,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  PrimaryButton(
                                    text: 'Change Password',
                                    onTap: () {
                                      setState(() {
                                        steps['step2'] = true;
                                      });
                                    },
                                  ),
                                  SizedBox(
                                    height: 15 * Responsive.differenceHeight,
                                  ),
                                  Row(
                                    children: <Widget>[
                                      Text(
                                        'I remembered my password ?',
                                        style: kGeneralLinksTextDecoration,
                                      ),
                                      SizedBox(
                                        width: 5 * Responsive.differenceWidth,
                                      ),
                                      GestureDetector(
                                        onTap: () {
                                          Navigator.pushNamed(
                                            context,
                                            LoginScreen.pageId,
                                          );
                                        },
                                        child: Text(
                                          'Click here',
                                          style: kGeneralLinksTextDecoration
                                              .copyWith(
                                                  fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
            ],
          ),
        ),
      ),
    );
  }
}
