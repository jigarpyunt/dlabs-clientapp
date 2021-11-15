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
  bool isNameInputFocused = true;
  bool isMobileInputFocused = false;
  bool isEmailInputFocused = false;
  bool isPasswordInputFocused = false;
  bool isVerifyOTPInputFocused = true;
  bool isFullAddressInputFocused = true;
  bool isCountryInputFocused = false;
  bool isStateInputFocused = false;
  bool isZipInputFocused = false;
  bool isPasswordVisible = false;

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
                                  isNameInputFocused = true;
                                  isMobileInputFocused = false;
                                  isEmailInputFocused = false;
                                  isPasswordInputFocused = false;
                                });
                              },
                              child: PrimaryInput(
                                labelText: "Full Name",
                                hintText: "Type in your full name",
                                isFocused: isNameInputFocused,
                                onTap: () {
                                  setState(() {
                                    isNameInputFocused = true;
                                    isMobileInputFocused = false;
                                    isEmailInputFocused = false;
                                    isPasswordInputFocused = false;
                                  });
                                },
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  isNameInputFocused = false;
                                  isMobileInputFocused = true;
                                  isEmailInputFocused = false;
                                  isPasswordInputFocused = false;
                                });
                              },
                              child: PrimaryInput(
                                labelText: "Mobile",
                                hintText: "Type in your mobile",
                                isFocused: isMobileInputFocused,
                                onTap: () {
                                  setState(() {
                                    isNameInputFocused = false;
                                    isMobileInputFocused = true;
                                    isEmailInputFocused = false;
                                    isPasswordInputFocused = false;
                                  });
                                },
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  isNameInputFocused = false;
                                  isMobileInputFocused = false;
                                  isEmailInputFocused = true;
                                  isPasswordInputFocused = false;
                                });
                              },
                              child: PrimaryInput(
                                labelText: "Email",
                                hintText: "Type in your valid email",
                                isFocused: isEmailInputFocused,
                                onTap: () {
                                  setState(() {
                                    isNameInputFocused = false;
                                    isMobileInputFocused = false;
                                    isEmailInputFocused = true;
                                    isPasswordInputFocused = false;
                                  });
                                },
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  isEmailInputFocused = false;
                                  isEmailInputFocused = false;
                                  isEmailInputFocused = false;
                                  isEmailInputFocused = true;
                                });
                              },
                              child: PrimaryInput(
                                labelText: "Create a strong passsword",
                                hintText: "Type in your secret password",
                                isFocused: isEmailInputFocused,
                                isObscureText: !isPasswordVisible,
                                trailIcon: GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      isPasswordVisible = !isPasswordVisible;
                                    });
                                  },
                                  child: Icon(
                                    isPasswordVisible == false
                                        ? Icons.visibility_off
                                        : Icons.visibility,
                                    color: Colors.white,
                                  ),
                                ),
                                onTap: () {
                                  setState(() {
                                    isEmailInputFocused = false;
                                    isEmailInputFocused = false;
                                    isEmailInputFocused = false;
                                    isEmailInputFocused = true;
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
                                    'If you already a user ?',
                                    style: kGeneralLinksTextDecoration,
                                  ),
                                  SizedBox(
                                    width: 5 * Responsive.differenceWidth,
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      Navigator.pushNamed(
                                          context, LoginScreen.pageId);
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
                                    isFocused: isNameInputFocused,
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
                                        onTap: () {
                                          
                                        },
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
                                        'Change number instead?',
                                        style: kGeneralLinksTextDecoration,
                                      ),
                                      SizedBox(
                                        width: 5 * Responsive.differenceWidth,
                                      ),
                                      GestureDetector(
                                        onTap: () {
                                          setState(() {
                                            steps['step1'] = true;
                                            steps['step2'] = false;
                                            steps['step3'] = false;
                                          });
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
                                  isFullAddressInputFocused = true;
                                  isCountryInputFocused= false;
                                  isStateInputFocused = false;
                                  isZipInputFocused = false;
                                });
                              },
                              child: PrimaryInput(
                                labelText: "Full Adress",
                                hintText: "Type in your full address",
                                isFocused: isFullAddressInputFocused,
                                onTap: () {
                                  setState(() {
                                    isFullAddressInputFocused = true;
                                    isCountryInputFocused= false;
                                    isStateInputFocused = false;
                                    isZipInputFocused = false;
                                  });
                                },
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  isFullAddressInputFocused = false;
                                  isCountryInputFocused= true;
                                  isStateInputFocused = false;
                                  isZipInputFocused = false;
                                });
                              },
                              child: PrimaryInput(
                                labelText: "Country",
                                hintText: "Tap to pick",
                                isFocused: isCountryInputFocused,
                                onTap: () {
                                  setState(() {
                                    isFullAddressInputFocused = false;
                                    isCountryInputFocused= true;
                                    isStateInputFocused = false;
                                    isZipInputFocused = false;
                                  });
                                },
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                    isFullAddressInputFocused = false;
                                    isCountryInputFocused= false;
                                    isStateInputFocused = true;
                                    isZipInputFocused = false;
                                });
                              },
                              child: PrimaryInput(
                                labelText: "State",
                                hintText: "Tap to pick",
                                isFocused: isStateInputFocused,
                                onTap: () {
                                  setState(() {
                                    isFullAddressInputFocused = false;
                                    isCountryInputFocused= false;
                                    isStateInputFocused = true;
                                    isZipInputFocused = false;
                                  });
                                },
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                    isFullAddressInputFocused = false;
                                    isCountryInputFocused= false;
                                    isStateInputFocused = false;
                                    isZipInputFocused = true;
                                });
                              },
                              child: PrimaryInput(
                                labelText: "Pincode / Zipcode",
                                hintText: "Type in your pin or zip code",
                                isFocused: isZipInputFocused,
                                onTap: () {
                                  setState(() {
                                    isFullAddressInputFocused = false;
                                    isCountryInputFocused= false;
                                    isStateInputFocused = false;
                                    isZipInputFocused = true;
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
                                text: 'Save',
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
                                    'If you already a user ?',
                                    style: kGeneralLinksTextDecoration,
                                  ),
                                  SizedBox(
                                    width: 5 * Responsive.differenceWidth,
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      Navigator.pushNamed(
                                          context, LoginScreen.pageId);
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
                    ),
            ],
          ),
        ),
      ),
    );
  }
}
