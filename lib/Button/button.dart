
import 'package:car/button/ButtonType.dart';
import 'package:flutter/material.dart';
class ButtonApps extends StatefulWidget {
  const ButtonApps({super.key});

  @override
  State<ButtonApps> createState() => _ButtonAppsState();
}

class _ButtonAppsState extends State<ButtonApps> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorSchemeSeed: const Color(0xff6750a4),
        useMaterial3: true,

      ),
      title: ("Button Example"),
      home: const Scaffold(
        body: ButtonTypeExamples(),
      ),
    );
  }
}
