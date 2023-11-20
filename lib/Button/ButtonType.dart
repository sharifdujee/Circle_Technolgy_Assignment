import 'package:car/button/ElevatedExample.dart';
import 'package:flutter/material.dart';

class ButtonTypeExamples extends StatefulWidget {
  const ButtonTypeExamples({super.key});

  @override
  State<ButtonTypeExamples> createState() => _ButtonTypeExamplesState();
}

class _ButtonTypeExamplesState extends State<ButtonTypeExamples> {
  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(10),
      child: Row(
        children: <Widget> [
          Spacer(),
          ButtonTypeGroups(enabled: true),
          ButtonTypeGroups(enabled: false),

        ],
      ),
    );
  }
}
