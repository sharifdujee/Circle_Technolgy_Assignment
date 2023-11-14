import 'package:flutter/material.dart';

class Background extends StatefulWidget {
  const Background({super.key});

  @override
  State<Background> createState() => _BackgroundState();
}

class _BackgroundState extends State<Background> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Welcome To The Power Of NGO",
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.w600,
                color: Colors.orange,
              ),
            ),
            Image(
              image: NetworkImage(
                  'https://d3l793awsc655b.cloudfront.net/blog/wp-content/uploads/2021/05/VS_Blog-Images_3-05.png'),
              height: 600,
              fit: BoxFit.fitHeight,
            ),
            const SizedBox(
              height: 30,
            ),
            Container(
              padding: EdgeInsets.all(5),
              color: Colors.amberAccent,
              alignment: Alignment.center,
              height: 30,
              child: Column(
                children: [
                  Text("Welcome To Dhaka Attack",
                  ),

                ],
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Container(
              padding: EdgeInsets.all(5),
              alignment: Alignment.center,
              height: 30,
              child: Text("Hello Chittagon"
              ),



            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              padding: EdgeInsets.all(5),
              alignment: Alignment.center,
              height: 30,
              child: Text("Hello Chittagon"
              ),



            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              padding: EdgeInsets.all(5),
              alignment: Alignment.center,
              height: 30,
              child: Text("Hello Chittagon"
              ),



            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              padding: EdgeInsets.all(5),
              alignment: Alignment.center,
              height: 30,
              child: Text("Hello Chittagon"
              ),



            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              padding: EdgeInsets.all(5),
              alignment: Alignment.center,
              height: 30,
              child: Text("Hello Chittagon"
              ),



            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              padding: EdgeInsets.all(5),
              alignment: Alignment.center,
              height: 30,
              child: Text("Hello Chittagon"
              ),



            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              padding: EdgeInsets.all(5),
              alignment: Alignment.center,
              height: 30,
              child: Text("Hello Chittagon"
              ),



            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              padding: EdgeInsets.all(5),
              alignment: Alignment.center,
              height: 30,
              child: Text("Hello Chittagon"
              ),



            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              padding: EdgeInsets.all(5),
              alignment: Alignment.center,
              height: 30,
              child: Text("Hello Chittagon"
              ),



            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              padding: EdgeInsets.all(5),
              alignment: Alignment.center,
              height: 30,
              child: Text("Hello Chittagon"
              ),



            ),
            const SizedBox(
              height: 10,
            ),
            Container(

              decoration: BoxDecoration(
                color: Colors.greenAccent,
                border: Border.all(
                  color: Colors.white,
                  width: 10,


                ),
                borderRadius: BorderRadius.circular(5),
              ),
              padding: EdgeInsets.all(5),
              alignment: Alignment.center,
              height: 30,
              child: Text("Hello Chittagon",
                style: TextStyle(
                  fontSize: 25,
                ),
              ),



            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.amberAccent,
                border: Border.all(
                  width: 8,
                ),
                borderRadius: BorderRadius.all(
                  Radius.elliptical(5, 5)
                ),

              ),

              padding: EdgeInsets.all(5),
              alignment: Alignment.center,
              height: 30,
              child: Text("Hello Chittagon"
              ),



            ),
            const SizedBox(
              height: 10,
            ),

          ],
        ),
      ),
    );
  }
}
