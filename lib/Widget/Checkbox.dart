import 'package:flutter/material.dart';
import 'package:roundcheckbox/roundcheckbox.dart';

class CheckBoxExample extends StatefulWidget {
  const CheckBoxExample({super.key});

  @override
  State<CheckBoxExample> createState() => _CheckBoxExampleState();
}

class _CheckBoxExampleState extends State<CheckBoxExample> {
  bool isChecked = false;
  bool isChecked1 = false;
  bool isChecked2 = false;
  bool isChecked4 = false;
  bool isChecked5 = false;
  bool isChecked4PM = false;
  bool isChecked6PM = false;

  @override
  Widget build(BuildContext context) {
    Color getColor(Set<MaterialState> states) {
      const Set<MaterialState> interactiveStates = <MaterialState>{
        MaterialState.pressed,
        MaterialState.hovered,
        MaterialState.focused,
      };
      if (states.any(interactiveStates.contains)) {
        return Colors.blue;
      }
      return Colors.red;
    }

    return SingleChildScrollView(
      child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Checkbox(
                checkColor: Colors.white,
                fillColor: MaterialStatePropertyAll(Colors.cyanAccent),
                value: isChecked,
                onChanged: (bool? value) {
                  setState(() {
                    isChecked = value!;
                  });
                }),
            Checkbox(
                side: BorderSide(
                  color: Colors.red,
                ),
                autofocus: false,
                checkColor: Colors.white,
                fillColor: MaterialStatePropertyAll(Colors.cyanAccent),
                value: isChecked1,
                onChanged: (bool? value) {
                  setState(() {
                    isChecked1 = value!;
                  });
                }),
            Checkbox(
                side: BorderSide(),
                checkColor: Colors.white,
                fillColor: MaterialStatePropertyAll(Colors.cyanAccent),
                value: isChecked2,
                shape: const CircleBorder(),
                onChanged: (bool? value) {
                  setState(() {
                    isChecked2 = value!;
                  });
                }),
            RoundCheckBox(
              onTap: (selected) {},
              size: 60,
              checkedWidget: Icon(Icons.mood),
              uncheckedColor: Colors.yellow,
              uncheckedWidget: Icon(
                Icons.close,
                size: 50,
                color: Colors.pink,
              ),
              border: Border.all(
                width: 4,
                color: Colors.red,
              ),
            ),
            const SizedBox(height: 10),
            RoundCheckBox(
              onTap: (selected) {},
              size: 60,
              uncheckedWidget: Icon(Icons.close),
              animationDuration: Duration(
                microseconds: 50,
              ),
              isChecked: true,
            ),
            const SizedBox(height: 10),
            RoundCheckBox(
              onTap: (selected) {},
              size: 60,
              uncheckedWidget: Icon(Icons.mood_bad),
              animationDuration: Duration(
                minutes: 1,
              ),
              isChecked: true,
              disabledColor: Colors.green,
            ),
            const SizedBox(
              height: 5,
            ),
            Checkbox(
                mouseCursor: MouseCursor.uncontrolled,
                tristate: false,
                side: BorderSide(
                  color: Colors.orange,
                ),
                autofocus: true,
                value: isChecked4,
                onChanged: (bool? values) {
                  setState(() {
                    isChecked = values!;
                  });
                }),
            Checkbox(
                value: isChecked,
                checkColor: Colors.green,
                activeColor: Colors.yellow,
                autofocus: false,
                onChanged: (bool? value1) {
                  setState(() {
                    isChecked = value1!;
                  });
                }),
            CheckboxListTile(
                controlAffinity: ListTileControlAffinity.leading,
                secondary: const Icon(Icons.alarm),
                title: const Text("4 P.M"),
                subtitle: const Text("5 P.M"),
                value: isChecked5,
                onChanged: (bool? val2) {
                  setState(() {
                    isChecked5 = val2!;
                  });
                }),
            Row(
              children: [
                Expanded(
                  child: CheckboxListTile(
                    controlAffinity: ListTileControlAffinity.trailing,
                    secondary: const Icon(Icons.alarm),
                    title: const Text("4 P.M"),
                    subtitle: const Text("5 P.M"),
                    value: isChecked4PM,
                    onChanged: (bool? val) {
                      setState(() {
                        isChecked4PM = val!;
                      });
                    },
                  ),
                ),
                SizedBox(width: 16), // Adjust the width as needed
                Expanded(
                  child: CheckboxListTile(
                    controlAffinity: ListTileControlAffinity.trailing,
                    secondary: const Icon(Icons.alarm),
                    title: const Text("6 P.M"),
                    subtitle: const Text("7 P.M"),
                    value: isChecked6PM,
                    onChanged: (bool? val) {
                      setState(() {
                        isChecked6PM = val!;
                      });
                    },
                  ),
                ),
              ],
            )

          ],
        ),
      ),
    );
  }
}
