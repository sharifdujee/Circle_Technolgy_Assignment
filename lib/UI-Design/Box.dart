import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class UIBoxDesign extends StatefulWidget {
  const UIBoxDesign({super.key});

  @override
  State<UIBoxDesign> createState() => _UIBoxDesignState();
}

class _UIBoxDesignState extends State<UIBoxDesign> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Welcome To User Interface"),
        backgroundColor: Colors.green,
        foregroundColor: Colors.black54,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Image(
                image: NetworkImage(
                    'data:image/png;base64,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'),
                height: 50,
                fit: BoxFit.fill,
              ),
              Container(
                constraints: BoxConstraints.expand(
                  height:
                      Theme.of(context).textTheme.headlineMedium!.fontSize! *
                              1.1 +
                          200.0,
                ),
                padding: EdgeInsets.all(5),
                color: Colors.amberAccent,
                alignment: Alignment.center,
                child: Column(
                  children: [
                    Text(
                      "Flutter",
                      style: TextStyle(
                        fontSize: 50,
                      ),
                    ),
                    Image(
                      image: NetworkImage(
                          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRvQWKBlHzCWS5_p3YZE8eKFIt_2TN5r-YkyZFcY24v4whQB8Thlvp0EtXY6egElYWQmUg&usqp=CAU'),
                      height: 130,
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                constraints: BoxConstraints.expand(
                  height:
                      Theme.of(context).textTheme.headlineMedium!.fontSize! *
                              1.1 +
                          200.0,
                ),
                padding: EdgeInsets.all(10),
                color: Colors.greenAccent,
                alignment: Alignment.center,
                child: Column(
                  children: [
                    Text(
                      "Android",
                      style: TextStyle(
                        fontSize: 50,
                      ),
                    ),
                    Image(
                      image: NetworkImage(
                          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSGjphEaLfpxyDd8onhCP7_t0Qnj-LYLsyHCMCZGtC4G-14hpiX7D1c3YRF3M7vAC21XGc&usqp=CAU'),
                      height: 100,
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Container(
                constraints: BoxConstraints.expand(
                  height:
                      Theme.of(context).textTheme.headlineMedium!.fontSize! *
                              1.1 +
                          200.0,
                ),
                padding: EdgeInsets.all(10),
                color: Colors.greenAccent,
                alignment: Alignment.center,
                child: Column(
                  children: [
                    Text(
                      "IOS",
                      style: TextStyle(
                        fontSize: 50,
                      ),
                    ),
                    Image(
                      image: NetworkImage(
                          'https://static.vecteezy.com/system/resources/previews/021/496/368/original/ios-icon-logo-software-phone-apple-symbol-with-name-black-design-mobile-illustration-free-vector.jpg'),
                      height: 100,
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Container(
                constraints: BoxConstraints.expand(
                  height:
                      Theme.of(context).textTheme.headlineMedium!.fontSize! *
                              1.1 +
                          200.0,
                ),
                padding: EdgeInsets.all(10),
                color: Colors.greenAccent,
                alignment: Alignment.center,
                child: Column(
                  children: [
                    Text(
                      "Linux",
                      style: TextStyle(
                        fontSize: 50,
                      ),
                    ),
                    Image(
                      image: NetworkImage(
                          'https://images.vexels.com/media/users/3/140692/isolated/lists/72d1f12edf758d24f5b6db73bac4f297-linux-logo.png'),
                      height: 100,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
