import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  //
  final String name;
  final Function onPressed;
  final Color primary, onPrimary;
  final EdgeInsetsGeometry padding;
  final BorderRadiusGeometry borderRadius;

  //
  const CustomButton({
    Key key,
    @required this.name,
    this.primary = const Color(0xFFDA0175),
    this.onPrimary = const Color(0xFFF7F7F7),
    this.padding = const EdgeInsets.fromLTRB(60, 11, 60, 11),
    this.borderRadius,
    @required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      child: Text(name),
      style: ElevatedButton.styleFrom(
        primary: primary,
        onPrimary: onPrimary,
        padding: padding,
        shape: RoundedRectangleBorder(borderRadius: borderRadius),
      ),
      onPressed: onPressed,
    );
  }
}
