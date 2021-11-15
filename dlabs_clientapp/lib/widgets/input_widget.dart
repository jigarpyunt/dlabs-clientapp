import 'package:flutter/material.dart';
import 'package:dlabs_clientapp/algorithms/responsive.dart';
import 'package:dlabs_clientapp/constants.dart';

class PrimaryInput extends StatefulWidget {
  const PrimaryInput(
      {Key? key,
      required this.labelText,
      required this.hintText,
      required this.isFocused,
      required this.onTap,
      this.trailIcon = false,
      this.isObscureText = false,
      }
      )
      : super(key: key);

  final String labelText;
  final String hintText;
  final bool isFocused;
  final dynamic onTap;
  final dynamic trailIcon;
  final bool isObscureText;

  @override
  _PrimaryInputState createState() => _PrimaryInputState();
}

class _PrimaryInputState extends State<PrimaryInput> {
  late FocusNode myFocusNode;

  @override
  void initState() {
    super.initState();

    myFocusNode = FocusNode();
  }

  @override
  void dispose() {
    // Clean up the focus node when the Form is disposed.
    myFocusNode.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        top: 25 * Responsive.differenceWidth,
        bottom: 10 * Responsive.differenceHeight,
        left: 22 * Responsive.differenceWidth,
        right: 22 * Responsive.differenceWidth,
      ),
      // margin: EdgeInsets.only(bottom: 20 * Responsive.differenceHeight),

      constraints: BoxConstraints(minHeight: 83 * Responsive.differenceHeight),
      decoration: widget.isFocused == true
          ? kInputBoxDecoration.copyWith(
              color: const Color.fromRGBO(255, 255, 255, 0.16),
            )
          : kInputBoxDecoration,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            widget.labelText,
            style: kPrimayInputLabelDecoration,
          ),
          // SizedBox(height: 10 * Responsive.differenceHeight),
          TextField(
            style: kPrimaryInputTextDecoration,
            obscureText: widget.isObscureText,
            decoration: kPrimaryInputDecoration.copyWith(
              hintText: widget.hintText,
              suffixIcon: widget.trailIcon != false ? widget.trailIcon : const Icon(Icons.keyboard, color: Colors.transparent,),
            ),
            focusNode: myFocusNode,
            onTap: widget.onTap,
          ),
        ],
      ),
    );
  }
}
