import 'package:flutter/material.dart';

class BrandImage extends StatelessWidget {
  const BrandImage({
    Key key,
    this.nameImage,
    this.height,
    this.width,
  }) : super(key: key);

  final nameImage;
  final double width;
  final double height;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Container(
        padding: EdgeInsets.symmetric(
          vertical: 10.0,
          horizontal: 30.0,
        ),
        child: Center(
          child: Image.asset(
            nameImage,
            width: width,
            height: height,
          ),
        ),
      ),
    );
  }
}
