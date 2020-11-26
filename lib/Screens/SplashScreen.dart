import 'package:animated_ui/Widgets/BrandButton.dart';
import 'package:animated_ui/Widgets/BrandImage.dart';
import 'package:animated_ui/Widgets/IntroText.dart';
import 'package:flutter/material.dart';

import '../BrandColors.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({
    Key key,
    @required this.backgroundColor,
    @required this.headingTop,
    @required this.textColor,
    @required this.onTap,
  }) : super(key: key);

  final Color backgroundColor;
  final double headingTop;
  final Color textColor;
  final Function onTap;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      curve: Curves.fastLinearToSlowEaseIn,
      duration: Duration(
        milliseconds: 1000,
      ),
      decoration: BoxDecoration(
        color: backgroundColor,
      ),
      padding: EdgeInsets.all(15.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          AnimatedContainer(
            curve: Curves.fastLinearToSlowEaseIn,
            duration: Duration(
              milliseconds: 1000,
            ),
            margin: EdgeInsets.only(
              top: headingTop,
            ),
            child: Column(
              children: [
                Container(
                  child: IntroText(
                    onTap: onTap,
                    textColor: textColor,
                  ),
                ),
              ],
            ),
          ),
          BrandImage(
            nameImage: "assets/images/splash_bg.png",
          ),
          Container(
            child: GestureDetector(
              onTap: onTap,
              child: Container(
                height: 53.0,
                width: 296.0,
                decoration: BoxDecoration(
                  color: BrandColors.buttonColor,
                  borderRadius: BorderRadius.circular(50.0),
                ),
                child: BrandButton(title: "Get Started"),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
