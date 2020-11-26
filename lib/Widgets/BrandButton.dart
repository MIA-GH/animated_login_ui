import 'package:flutter/material.dart';

import '../BrandColors.dart';

class BrandButton extends StatelessWidget {
  const BrandButton({
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
        color: BrandColors.buttonColor,
        borderRadius: BorderRadius.circular(50.0),
      ),
      child: Center(
        child: Text(
          title,
          style: TextStyle(
            color: BrandColors.textColor,
            fontSize: 16.0,
          ),
        ),
      ),
    );
  }
}
