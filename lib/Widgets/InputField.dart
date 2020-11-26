import 'package:flutter/material.dart';

import '../BrandColors.dart';

class InputField extends StatelessWidget {
  const InputField({
    Key key,
    this.icon,
    this.title,
  }) : super(key: key);

  final String title;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 296.0,
      height: 53.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50.0),
        border: Border.all(
          color: BrandColors.strokeColor,
          width: 2.0,
          style: BorderStyle.solid,
        ),
      ),
      child: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: 60.0,
              child: Icon(
                icon,
                size: 20.0,
                color: BrandColors.strokeColor,
              ),
            ),
            Expanded(
              child: TextField(
                textAlign: TextAlign.start,
                decoration: InputDecoration(
                  hintText: title,
                  border: InputBorder.none,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
