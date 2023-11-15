import 'package:flutter/material.dart';

class ButtonTypeGroups extends StatefulWidget {
  const ButtonTypeGroups({Key? key, required this.enabled}) : super(key: key);

  final bool enabled;

  @override
  State<ButtonTypeGroups> createState() => _ButtonTypeGroupsState();
}

class _ButtonTypeGroupsState extends State<ButtonTypeGroups> {
  @override
  Widget build(BuildContext context) {
    final VoidCallback? onPressed = widget.enabled ? () {} : null;
    return Padding(


      padding: const EdgeInsets.all(30.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          ElevatedButton(
            style: const ButtonStyle(
              backgroundColor: MaterialStatePropertyAll(Colors.green),
            ),
            onPressed: onPressed,
            child: const Text("Activated"),
          ),
          FilledButton(
            style: const ButtonStyle(
              backgroundColor: MaterialStatePropertyAll(Colors.greenAccent)
            ),
            onPressed: onPressed,
              child: const Text("Filled"),
          ),
          FilledButton.tonal(
            style: TextButton.styleFrom(
              foregroundColor: Colors.red,
            ),
            onPressed: onPressed,
              child: const Text("Filled Button"),
          ),
          OutlinedButton(
            style:const ButtonStyle(
              backgroundColor: MaterialStatePropertyAll(Colors.orange),
            ),
            onPressed: onPressed,
              child: const Text("OutLine"),
          ),
          TextButton(
            style: const ButtonStyle(
              backgroundColor: MaterialStatePropertyAll(Colors.blue),
              foregroundColor: MaterialStatePropertyAll(Colors.red),
              overlayColor: MaterialStatePropertyAll(Colors.cyanAccent),
            ),
            onPressed: onPressed, child: const Text("Text"),
          ),


          TextButtonTheme(data: TextButtonThemeData(
            style: TextButton.styleFrom(foregroundColor: Colors.green),
          ),
              child: Text("TextButtonTheme"),
          ),



        ],
      ),


    );
  }
}
