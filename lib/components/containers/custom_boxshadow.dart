import 'package:flutter/material.dart';

class CustomContainerBoxShadow extends StatelessWidget {
  final Widget child;
  final EdgeInsetsGeometry margin;
  final EdgeInsetsGeometry padding;
  final double height;
  final double width;

  const CustomContainerBoxShadow({
    Key key,
    @required this.child,
    this.height = 87,
    this.width,
    this.padding,
    this.margin,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // var mediaQuery = MediaQuery.of(context);

    return Container(
      height: height,
      width: width,
      padding: padding,
      margin: margin,
      decoration: BoxDecoration(
        color: Colors.white,
        // borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            blurRadius: 3,
            spreadRadius: 1,
            offset: Offset(0, -1),
          ),
        ],
      ),
      child: child,
    );
  }
}
