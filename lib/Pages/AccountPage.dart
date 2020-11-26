import 'package:animated_ui/BrandColors.dart';
import 'package:animated_ui/Pages/MainPage.dart';
import 'package:animated_ui/Widgets/BrandButton.dart';
import 'package:animated_ui/Widgets/BrandImage.dart';
import 'package:animated_ui/Widgets/IntroText.dart';
import 'package:flutter/material.dart';

class AccountPage extends StatefulWidget {
  @override
  _AccountPageState createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red,
          title: Center(
            child: Text(
              "Acoounts",
              style: TextStyle(
                color: BrandColors.textColor,
              ),
            ),
          ),
        ),
        body: Container(
          decoration: BoxDecoration(
            color: Colors.redAccent,
          ),
          child: Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 20.0,
                horizontal: 10.0,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    child: IntroText(
                      textColor: BrandColors.textColor,
                    ),
                  ),
                  Container(
                    child: BrandImage(
                      nameImage: "assets/images/profile_image.png",
                      width: 180.0,
                      height: 180.0,
                    ),
                  ),
                  Container(
                    child: GestureDetector(
                      onTap: () {
                        Navigator.pushAndRemoveUntil(
                            context,
                            MaterialPageRoute(
                              builder: (BuildContext context) => MainPage(),
                            ),
                            (route) => false);
                      },
                      child: BrandButton(
                        title: "Log Out",
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
