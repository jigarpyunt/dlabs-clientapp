import 'package:flutter/material.dart';
import 'package:dlabs_clientapp/algorithms/responsive.dart';
import 'package:dlabs_clientapp/constants.dart';

const Color kPrimaryColor1 = Color(0xff0F1433);
const Color kPrimaryColor2 = Color.fromRGBO(32, 48, 150, 0.7);

BoxDecoration kBackgroundLinearGradientDecoration = const BoxDecoration(
  gradient: LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [
      kPrimaryColor1,
      kPrimaryColor2,
    ],
    tileMode: TileMode.repeated, // repeats the gradient over the canvas
  ),
);

TextStyle kAppHeadingStyle = TextStyle(
  fontFamily: 'OpenSans',
  fontSize: 20 * Responsive.differenceWidth,
  color: Colors.white,
  letterSpacing: 1.50 * Responsive.differenceWidth,
  fontWeight: FontWeight.bold,
);

BoxDecoration kInputBoxDecoration = BoxDecoration(
  // color: const Color.fromRGBO(255, 255, 255, 0.16),
  borderRadius: BorderRadius.circular(15.0),
);

TextStyle kPrimayInputLabelDecoration = TextStyle(
  fontFamily: 'Roboto',
  fontSize: 14 * Responsive.differenceWidth,
  color: Colors.white,
  letterSpacing: 1.20 * Responsive.differenceWidth,
);

TextStyle kPrimaryInputHintDecoration = TextStyle(
  fontFamily: 'Roboto',
  fontSize: 14 * Responsive.differenceWidth,
  color: const Color.fromRGBO(255, 255, 255, 0.83),
  letterSpacing: 1.20 * Responsive.differenceWidth,
);

TextStyle kPrimaryInputTextDecoration = TextStyle(
  fontFamily: 'Roboto',
  fontSize: 14 * Responsive.differenceWidth,
  color: Colors.white,
  letterSpacing: 1.20 * Responsive.differenceWidth,
);

InputDecoration kPrimaryInputDecoration = InputDecoration(
  enabledBorder: const UnderlineInputBorder(
    borderSide: BorderSide.none,
    borderRadius: BorderRadius.all(
      Radius.circular(0),
    ),
  ),
  focusedBorder: const UnderlineInputBorder(
      borderSide: BorderSide.none,
      borderRadius: BorderRadius.all(
        Radius.circular(0),
      )),
  border: const UnderlineInputBorder(
    borderSide: BorderSide.none,
    borderRadius: BorderRadius.all(
      Radius.circular(0),
    ),
  ),
  hintText: 'Dummy Text',
  hintStyle: kPrimaryInputHintDecoration,
);

TextStyle kPrimaryButtonTextDecoration = TextStyle(
  fontFamily: 'Roboto',
  fontSize: 14 * Responsive.differenceWidth,
  color: Colors.white,
  letterSpacing: 1.20 * Responsive.differenceWidth,
);

ButtonStyle kPrimaryButtonDecoration = ButtonStyle(
  backgroundColor: MaterialStateProperty.all<Color>(Colors.transparent),
  textStyle: MaterialStateProperty.all<TextStyle>(kPrimaryButtonTextDecoration),
  shadowColor: MaterialStateProperty.all<Color>(Colors.transparent),
  side: MaterialStateProperty.all<BorderSide>(
    const BorderSide(width: 1.0, color: Colors.white),
  ),
  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
    RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(
      31.0 * Responsive.differenceWidth,
    )),
  ),
  minimumSize: MaterialStateProperty.all<Size>(
    Size(
      113.0 * Responsive.differenceWidth,
      34 * Responsive.differenceHeight,
    ),
  ),
);

EdgeInsets kCustomPaddingDecoration = EdgeInsets.only(
  top: 25 * Responsive.differenceWidth,
  bottom: 10 * Responsive.differenceHeight,
  left: 22 * Responsive.differenceWidth,
  right: 22 * Responsive.differenceWidth,
);

TextStyle kGeneralLinksTextDecoration = TextStyle(
  fontFamily: 'Roboto',
  fontSize: 12.0 * Responsive.differenceWidth,
  color: Colors.white,
  letterSpacing: 1.20 * Responsive.differenceWidth
);
