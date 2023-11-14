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
              // Image(
              //   image: NetworkImage(
              //       'https://static.wikia.nocookie.net/logo-timeline/images/c/cf/4B4A9751-D2BF-4A93-BDCC-CDCA5326B65F.png/revision/latest/scale-to-width-down/180?cb=20210426191500'),
              //   height: 50,
              //   fit: BoxFit.fill,
              // ),
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
