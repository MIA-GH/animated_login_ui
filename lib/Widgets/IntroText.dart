import 'package:flutter/material.dart';

import '../GlobalVariables.dart';

class IntroText extends StatelessWidget {
  const IntroText({
    Key key,
    this.onTap,
    @required this.textColor,
  }) : super(key: key);

  final Function onTap;
  final Color textColor;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.only(top: 40.0),
          child: Center(
            child: GestureDetector(
              onTap: onTap,
              child: Text(
                Data.title,
                style: TextStyle(
                  color: textColor,
                  fontFamily: "Nunito-Bold",
                  fontSize: 28.0,
                ),
              ),
            ),
          ),
        ),
        SizedBox(height: 20.0),
        Container(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Text(
                Data.descriptionText,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: textColor,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
