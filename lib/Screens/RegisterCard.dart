import 'package:animated_ui/Pages/AccountPage.dart';
import 'package:animated_ui/Widgets/BrandButton.dart';
import 'package:animated_ui/Widgets/InputField.dart';
import 'package:animated_ui/Widgets/OutlineButton.dart';
import 'package:flutter/material.dart';

import '../BrandColors.dart';

class RegisterCard extends StatelessWidget {
  const RegisterCard({
    Key key,
    @required this.registerYOffset,
    @required this.registerHeight,
    @required this.onTap,
  }) : super(key: key);

  final double registerYOffset;
  final double registerHeight;
  final Function onTap;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      curve: Curves.fastLinearToSlowEaseIn,
      duration: Duration(
        milliseconds: 1000,
      ),
      width: double.infinity,
      height: registerHeight,
      transform: Matrix4.translationValues(
        0,
        registerYOffset,
        1,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(25.0),
          topRight: Radius.circular(25.0),
        ),
        color: BrandColors.splashBackgroundColor,
      ),
      padding: EdgeInsets.all(12.0),
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
                        title: "Create Account",
                      ),
                    ),
                  ),
                  SizedBox(height: 20.0),
                  Container(
                    child: GestureDetector(
                      onTap: onTap,
                      child: TransparentButton(
                        title: "Log In",
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
