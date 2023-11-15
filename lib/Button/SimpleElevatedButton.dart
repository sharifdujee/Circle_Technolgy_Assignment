import 'package:flutter/material.dart';

class SimpleElevatedButtonWithIcons extends StatefulWidget {
  const SimpleElevatedButtonWithIcons({
    required this.label,
    this.color,
    this.iconData,
    required this.onPressed,
    this.padding = const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
    Key? key,
  }) : super(key: key);

  final Widget label;
  final Color? color;
  final IconData? iconData;
  final void Function() onPressed;
  final EdgeInsetsGeometry padding;

  @override
  _SimpleElevatedButtonWithIconsState createState() =>
      _SimpleElevatedButtonWithIconsState();
}

class _SimpleElevatedButtonWithIconsState
    extends State<SimpleElevatedButtonWithIcons> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      onPressed: widget.onPressed,
      icon: Icon(widget.iconData),
      label: SizedBox.shrink(),
      style: ElevatedButton.styleFrom(
        backgroundColor: widget.color,
        padding: widget.padding,
      ),
    );
  }
}
