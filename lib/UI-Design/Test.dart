import 'package:flutter/material.dart';

class FunWithContainer extends StatefulWidget {
  const FunWithContainer ({super.key});

  @override
  State<FunWithContainer> createState() => _FunWithContainerState();
}

class _FunWithContainerState extends State<FunWithContainer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Fun With Container",
          style: TextStyle(
            fontSize: 25,
            color: Colors.blue,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Row(
          children: [
            Column(
              children: [
                Container(
                  padding: EdgeInsets.all(10),
                  color: Colors.red,
                  height: 150,
                  width: 200,
                  alignment: Alignment.center,
                ),
                const SizedBox(
                  height: 5,
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  color: Colors.red,
                  height: 150,
                  width: 200,
                  alignment: Alignment.center,
                ),
                const SizedBox(
                  height: 5,
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  color: Colors.red,
                  height: 150,
                  width: 200,
                  alignment: Alignment.center,
                ),
                const SizedBox(
                  height: 5,
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  color: Colors.red,
                  height: 150,
                  width: 200,
                  alignment: Alignment.center,
                ),
              ],
            ),
            const SizedBox(
              width: 5,
            ),
            Column(
              children: [
                Container(
                  padding: EdgeInsets.all(10),
                  color: Colors.red,
                  height: 150,
                  width: 200,
                  alignment: Alignment.center,
                ),
                const SizedBox(
                  height: 5,
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  color: Colors.red,
                  height: 150,
                  width: 200,
                  alignment: Alignment.center,
                ),
                const SizedBox(
                  height: 5,
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  color: Colors.red,
                  height: 150,
                  width: 200,
                  alignment: Alignment.center,
                ),
                const SizedBox(
                  height: 5,
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  color: Colors.red,
                  height: 150,
                  width: 200,
                  alignment: Alignment.center,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
