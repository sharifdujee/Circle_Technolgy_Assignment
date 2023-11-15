import 'package:flutter/material.dart';
class SimpleElevatedButtonWithIcons extends StatelessWidget {
  const SimpleElevatedButtonWithIcons(
      {required this.label,
        this.color,
        this.iconData,
        required this.onPressed,
        this.padding = const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
        Key? key})
      : super(key: key);
  final Widget label;
  final Color? color;
  final IconData? iconData;
  final Function onPressed;
  final EdgeInsetsGeometry padding;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      onPressed: onPressed as void Function()?,
      icon: Icon(iconData),
      label: label,
      style: ElevatedButton.styleFrom(backgroundColor: color, padding: padding),
    );
  }
}