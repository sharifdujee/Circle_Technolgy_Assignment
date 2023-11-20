import 'package:flutter/material.dart';
enum SampleItem {item1, item2, item3}
class PopupButton extends StatefulWidget {
  const PopupButton({super.key});


  @override
  State<PopupButton> createState() => _PopupButtonState();
}

class _PopupButtonState extends State<PopupButton> {
  SampleItem? selectedMenu;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: PopupMenuButton <SampleItem>(
          initialValue: selectedMenu,
          onSelected: (SampleItem item){
            setState(() {
              selectedMenu = item;
            });
          },
          itemBuilder: (BuildContext context) => <PopupMenuEntry<SampleItem>>[
            const PopupMenuItem(
              value: SampleItem.item1,
              child: Text('Item 1'),
            ),
            const PopupMenuItem(
              value: SampleItem.item1,
              child: Text('Item 2'),
            ),
            const PopupMenuItem(
              value: SampleItem.item1,
              child: Text('Item 3'),
            ),
          ],

        ),
      ),
    );
  }
}
