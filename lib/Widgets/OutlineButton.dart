import 'package:flutter/material.dart';

import '../BrandColors.dart';

class TransparentButton extends StatelessWidget {
  const TransparentButton({
    Key key,
    @required this.title,
  }) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 296.0,
      height: 53.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50.0),
        border: Border.all(),
      ),
      child: Center(
        child: Text(
          title,
          style: TextStyle(
            color: BrandColors.buttonColor,
            fontSize: 16.0,
            fontFamily: "Nunito-Bold",
          ),
        ),
      ),
    );
  }
}
