import 'package:flutter/material.dart';

class LogInScreens extends StatefulWidget {
  const LogInScreens({Key? key}) : super(key: key);

  @override
  State<LogInScreens> createState() => _LogInScreenState();
}

class _LogInScreenState extends State<LogInScreens> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login Page"),
      ),
      body: Stack(
        children: [
          // Background Image
          Positioned.fill(
            child: Image.network(
              'https://scontent.fdac11-1.fna.fbcdn.net/v/t39.30808-6/365160682_1436748883823833_7848984989385120260_n.jpg?_nc_cat=101&ccb=1-7&_nc_sid=5f2048&_nc_ohc=jttqelRXNhsAX9OLmxO&_nc_ht=scontent.fdac11-1.fna&oh=00_AfAUaxEJzlFxu1gO7o5OTTgX4mh5NHFOP8-ziIFSfgsWeQ&oe=655C9B7A',
              fit: BoxFit.cover,
            ),
          ),
          Container(
            // Background overlay to add a semi-transparent color
            color: Colors.green.withOpacity(0.7),
          ),
          Container(
            padding: EdgeInsets.all(16),
            child: Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(height: 40),
                  Text(
                    "User Login Form",
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 20),
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        labelText: "User Name or Email",
                        hintText: 'Valid email Format is abc@gmail.com',
                        errorText: 'Please Enter a Valid Email',
                        border: OutlineInputBorder(),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                        ),
                        filled: false,
                        fillColor: Colors.white,
                        prefixIcon: Icon(Icons.dashboard),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        labelText: "Password",
                        hintText: 'The Password is Number and Alphabet No Space is Allowed',
                        prefixIcon: Icon(Icons.security),
                        suffixIcon: Icon(Icons.password),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                        ),
                      ),
                      obscureText: true,
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: Text('Back'),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
