import 'package:flutter/material.dart';
class FloatingAction extends StatefulWidget {
  const FloatingAction({super.key});

  @override
  State<FloatingAction> createState() => _FloatingActionState();
}

class _FloatingActionState extends State<FloatingAction> {
  static const List<(Color?, Color? background, ShapeBorder?)> customizations =
  <(Color?, Color?, ShapeBorder?)>[
    (null, null, null), // The FAB uses its default for null parameters.
    (null, Colors.green, null),
    (Colors.white, Colors.green, null),
    (Colors.white, Colors.green, CircleBorder()),
  ];
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("Press Below"),

      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          setState(() {
            index = (index +1) %  customizations.length;

          });
        },
        foregroundColor: customizations[index].$1,
        backgroundColor: customizations[index].$2,
        shape: customizations[index].$3,
        child: const Icon(Icons.add),
      ),

    );
  }
}
