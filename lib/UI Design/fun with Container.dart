import 'package:flutter/material.dart';

class FunWithContainer extends StatefulWidget {
  const FunWithContainer({super.key});

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
                  decoration: BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage(
                          'https://dm0qx8t0i9gc9.cloudfront.net/thumbnails/image/rDtN98Qoishumwih/apple-circle_fkgeGtFd_thumb.jpg',
                        ),
                        fit: BoxFit.cover,
                      ),
                      border: Border.all(


                        width: 8,
                      ),
                      borderRadius: BorderRadius.horizontal(
                        left: Radius.circular(15),
                        right: Radius.circular(20),

                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black,
                          offset: const Offset(2.00, 2.00),
                          blurRadius: 10.0,
                          spreadRadius: 5.0,

                        ),
                        BoxShadow(
                          color: Colors.white,
                          offset: const Offset(5.0, 5.0),
                          blurRadius: 10.0,
                          spreadRadius: 5.0,
                        )

                      ]
                  ),
                  padding: EdgeInsets.all(10),
                  height: 150,
                  width: 200,
                  alignment: Alignment.center,
                  child: Text(
                    "Welcome To Box Shadow",
                    style: TextStyle(
                      fontSize: 10,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Container(
                  decoration: BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage(
                          'https://dm0qx8t0i9gc9.cloudfront.net/thumbnails/image/rDtN98Qoishumwih/graphicstock-business-people-with-their-hands-together-in-a-circle_HOX71HQr2g_thumb.jpg',
                        ),
                        fit: BoxFit.fitHeight,
                      ),
                      border: Border.all(
                        color: const Color(0xFF000000),
                        width: 8,
                        style: BorderStyle.solid,
                      ),
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      )

                  ),
                  padding: EdgeInsets.all(10),
                  height: 150,
                  width: 200,
                  alignment: Alignment.center,
                  child: Text(
                    "Welcome To All Radious",
                    style: TextStyle(
                      fontSize: 10,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(
                        'https://dm0qx8t0i9gc9.cloudfront.net/thumbnails/image/rDtN98Qoishumwih/group-of-business-people-in-a-circle-looking-down_thumb.jpg',
                      ),
                      fit: BoxFit.fitWidth,
                    ),
                    border: Border.all(
                      width: 8,
                    ),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(40),
                      bottomLeft: Radius.circular(10),
                      bottomRight: Radius.circular(20),
                    ),
                  ),
                  padding: EdgeInsets.all(10),
                  height: 150,
                  width: 200,
                  alignment: Alignment.center,
                  child: Text(
                    "Welcome to Only Radious ",
                    style: TextStyle(
                      fontSize: 10,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.greenAccent,
                    image: DecorationImage(
                      image: NetworkImage(
                        'https://dm0qx8t0i9gc9.cloudfront.net/thumbnails/image/rDtN98Qoishumwih/graphicstock-a-football-ball-in-circle-of-hands_S6GEZd8gE-_thumb.jpg',
                      ),
                      fit: BoxFit.fill,
                    ),
                    border: Border.all(
                      width: 8,
                    ),
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(10),
                      bottom: Radius.circular(30),
                    ),
                  ),
                  padding: EdgeInsets.all(10),
                  height: 150,
                  width: 200,
                  alignment: Alignment.center,
                  child: Text(
                    "Welcome To Vertical Border Radius",
                    style: TextStyle(
                      fontSize: 10,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              width: 8,
            ),
            Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Colors.deepOrange,
                    image: DecorationImage(
                      image: NetworkImage(
                        'https://dm0qx8t0i9gc9.cloudfront.net/thumbnails/image/rDtN98Qoishumwih/colorful-circle-frame_Q1zuZf_thumb.jpg',
                      ),
                      fit: BoxFit.cover,
                    ),
                    border: Border.all(
                      width: 8,
                    ),
                    borderRadius: BorderRadius.circular(12),
                  ),

                  padding: EdgeInsets.all(10),
                  height: 150,
                  width: 200,
                  alignment: Alignment.center,
                  child: Text(
                    "Welcome To Circle IT",
                    style: TextStyle(
                      fontSize: 10,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.green,
                    image: DecorationImage(
                      image: NetworkImage(
                        'https://dm0qx8t0i9gc9.cloudfront.net/thumbnails/image/rDtN98Qoishumwih/colored-circle-vector_XyA8-G_thumb.jpg',
                      ),
                      fit: BoxFit.fill,
                    ),
                    border: Border.all(
                      width: 8,
                    ),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  padding: EdgeInsets.all(10),
                  height: 150,
                  width: 200,
                  alignment: Alignment.center,
                  child: Text(
                    "Welcome To Circle IT",
                    style: TextStyle(
                      fontSize: 10,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(
                        'https://dm0qx8t0i9gc9.cloudfront.net/thumbnails/image/rDtN98Qoishumwih/circle-design_Q1-wWf_thumb.jpg',
                      ),
                      fit: BoxFit.fitHeight,

                    ),
                    border: Border.all(
                      width: 8,
                    ),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  padding: EdgeInsets.all(10),
                  height: 150,
                  width: 200,
                  alignment: Alignment.center,
                  child: Text(
                    "Welcome To Circle IT",
                    style: TextStyle(
                      fontSize: 10,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(
                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQEFG7Kv7toeEsrjxsk1bXLdyvvdkiGvfj3esXCgETDi69IKffFHoO4FCZEyCV92F5WjOA&usqp=CAU',
                      ),
                      fit: BoxFit.fitWidth,
                    ),
                    border: Border.all(
                      width: 8,
                    ),
                    borderRadius: BorderRadius.circular(12),
                    color: Colors.greenAccent,
                  ),
                  padding: EdgeInsets.all(10),
                  height: 150,
                  width: 200,
                  alignment: Alignment.center,
                  child: Text(
                    "Welcome To Circle IT",
                    style: TextStyle(
                      fontSize: 10,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
