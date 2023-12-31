

import 'package:car/UI%20Design/Background%20Image.dart';
import 'package:car/UI%20Design/Box.dart';
import 'package:car/UI%20Design/Home.dart';
import 'package:car/UI%20Design/button.dart';
import 'package:car/UI%20Design/ecommerce.dart';
import 'package:car/UI%20Design/fun%20with%20Container.dart';
import 'package:car/User/FinalLogin.dart';
import 'package:car/User/Login.dart';
import 'package:car/Widget/checkbox.dart';
import 'package:car/button/CircularButton.dart';
import 'package:car/button/FloatingAction.dart';
import 'package:car/button/PopUp.dart';
import 'package:car/button/SimpleElevated.dart';
import 'package:car/button/button.dart';
import 'package:flutter/material.dart';
import 'package:roundcheckbox/roundcheckbox.dart';

class DashBoard extends StatefulWidget {
  const DashBoard({super.key});

  @override
  State<DashBoard> createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {
  List<Widget> tasklist = <Widget>[
    const Home(),
    const UIBoxDesign(),
    const FunWithContainer(),
    const Background(),
    const SimpleEcommerce(),
    const SimpleButtons(),
    const CircularIconButton(iconData: Icons.circle),
    SimpleElevatedButtonWithIcons(label:Text(""), onPressed: () {}),
    const  ButtonApps(),
    const FloatingAction(),
    const PopupButton(),
    const LogInScreen(),



  ];
  int _selectedWork = 0;

  onChange(int i) {
    setState(() {
      _selectedWork = i;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.greenAccent,
        foregroundColor: Colors.black,
        title: Text("DashBoard"),
      ),
      drawer: Container(
        child: Drawer(
          child: ListView(
            children: [
              const UserAccountsDrawerHeader(
                currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage(
                      'https://scontent.fdac11-1.fna.fbcdn.net/v/t39.30808-6/217142329_953228745509185_6940319647886906037_n.jpg?_nc_cat=111&ccb=1-7&_nc_sid=5f2048&_nc_ohc=OXt9VfJEslUAX_P9N6b&_nc_ht=scontent.fdac11-1.fna&oh=00_AfDPkhRMr07oB3YGxClvVyck7CryINJMQOUWvMSoLFLFCw&oe=65578701'),
                ),
                accountName: Text("Harry Poter"),
                accountEmail: Text("Harry21Poter@Gmail.com"),
              ),
              ListTile(
                leading: const Icon(Icons.home),
                title: Text("HomePage"),
                onTap: () {
                  onChange(0);
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: const Icon(Icons.design_services),
                title: Text("UI Design"),
                onTap: () {
                  onChange(1);
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: const Icon(Icons.face_unlock_outlined),
                title: Text("Fun With Container"),
                onTap: () {
                  onChange(2);
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: const Icon(Icons.backpack),
                title: Text("Background"),
                onTap: () {
                  onChange(3);
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: const Icon(Icons.business),
                title: Text("ECommerce"),
                onTap: () {
                  onChange(4);
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: const Icon(Icons.smart_button),
                title: Text("Button Example"),
                onTap: () {
                  onChange(5);
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: const Icon(Icons.account_circle),
                title: Text("Circular Icon button"),
                onTap: () {
                  onChange(6);
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: const Icon(Icons.account_circle),
                title: Text("Circular Icon button"),
                onTap: () {
                  onChange(7);
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: const Icon(Icons.account_circle),
                title: Text("Elevated Button"),
                onTap: () {
                  onChange(8);
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: const Icon(Icons.account_circle),
                title: Text("Floating Action"),
                onTap: () {
                  onChange(9);
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: const Icon(Icons.account_circle),
                title: Text("PopUp Menu"),
                onTap: () {
                  onChange(10);
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: const Icon(Icons.account_circle),
                title: Text("Login"),
                onTap: () {
                  onChange(11);
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        ),
      ),
      body: Center(
        child: tasklist[_selectedWork],
      ),
    );
  }
}
