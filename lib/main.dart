import 'package:circletechnolgy/Button/CircularButton.dart';
import 'package:circletechnolgy/Dashboard/DashBoard.dart';
import 'package:circletechnolgy/Widget/root.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      // home: const Home(),
      //home: const UIBoxDesign(),
      //home:  const FunWithContainer()
       home: const DashBoard(),
     // home :  const RootWidget()




    );
  }
}
