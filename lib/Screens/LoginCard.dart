import 'package:animated_ui/Pages/AccountPage.dart';
import 'package:animated_ui/Widgets/BrandButton.dart';
import 'package:animated_ui/Widgets/InputField.dart';
import 'package:animated_ui/Widgets/OutlineButton.dart';
import 'package:flutter/material.dart';

import '../BrandColors.dart';

class LoginCard extends StatelessWidget {
  const LoginCard({
    Key key,
    @required this.loginWidth,
    @required this.loginHeight,
    @required this.loginXOffset,
    @required this.loginYOffset,
    @required this.loginOpacity,
    @required this.onTap,
  }) : super(key: key);

  final double loginWidth;
  final double loginHeight;
  final double loginXOffset;
  final double loginYOffset;
  final double loginOpacity;
  final Function onTap;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      curve: Curves.fastLinearToSlowEaseIn,
      duration: Duration(
        milliseconds: 1000,
      ),
      width: loginWidth,
      height: loginHeight,
      transform: Matrix4.translationValues(
        loginXOffset,
        loginYOffset,
        1,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(25.0),
          topRight: Radius.circular(25.0),
        ),
        color: BrandColors.splashBackgroundColor.withOpacity(
          loginOpacity,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ///input fields
            Container(
              child: Column(
                children: [
                  InputField(
                    title: "Email Address",
                    icon: Icons.email,
                  ),
                  SizedBox(height: 20.0),
                  InputField(
                    title: "Password",
                    icon: Icons.vpn_key,
                  ),
                ],
              ),
            ),

            /// buttons
            Container(
              child: Column(
                children: [
                  Container(
                    child: GestureDetector(
                      onTap: () {
                        Navigator.pushAndRemoveUntil(
                            context,
                            MaterialPageRoute(
                              builder: (BuildContext context) => AccountPage(),
                            ),
                            (route) => false);
                      },
                      child: BrandButton(
                        title: "Log In",
                      ),
                    ),
                  ),
                  SizedBox(height: 20.0),
                  Container(
                    child: GestureDetector(
                      onTap: onTap,
                      child: TransparentButton(
                        title: "Create Account",
                      ),
                    ),
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
