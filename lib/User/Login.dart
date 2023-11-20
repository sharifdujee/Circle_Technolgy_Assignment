
import 'package:car/User/FinalLogin.dart';
import 'package:car/User/Registration.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class LogInScreen extends StatefulWidget {
  const LogInScreen({Key? key}) : super(key: key);

  @override
  State<LogInScreen> createState() => _LogInScreenState();
}

class _LogInScreenState extends State<LogInScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      appBar: AppBar(
        title: Text("Login Page"),
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        padding: EdgeInsets.only(top: 4),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
        ),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image(
                image: NetworkImage(
                    'https://scontent.fdac11-1.fna.fbcdn.net/v/t39.30808-6/365160682_1436748883823833_7848984989385120260_n.jpg?_nc_cat=101&ccb=1-7&_nc_sid=5f2048&_nc_ohc=jttqelRXNhsAX9OLmxO&_nc_ht=scontent.fdac11-1.fna&oh=00_AfAUaxEJzlFxu1gO7o5OTTgX4mh5NHFOP8-ziIFSfgsWeQ&oe=655C9B7A'),
              ),
              const SizedBox(
                height: 40,
              ),
              Text(
                "User Login Form",
                style: TextStyle(
                  fontSize: 50,
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Container(
                child: TextField(
                  decoration: InputDecoration(
                      icon: Icon(Icons.send_rounded),
                      helperText: 'abc232@.',
                      counterText: '5 Character',
                      border: OutlineInputBorder(),
                      labelText: "User Name or Email",
                      hintText: 'Valid email Format is abc@gmail.com',
                      errorText: 'Please Enter a Valid Email',
                      errorBorder: OutlineInputBorder(
                          borderSide:  BorderSide(
                            color: Colors.white,
                            width: 0.8,
                          )
                      ),
                      fillColor: Colors.pink,
                      focusColor: Colors.lightBlue,
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5)
                      ),
                      filled: false,
                      floatingLabelAlignment: FloatingLabelAlignment.start,
                      floatingLabelBehavior: FloatingLabelBehavior.auto,
                      alignLabelWithHint: true,
                      // contentPadding: EdgeInsetsGeometry.infinity,
                      // constraints: BoxConstraints(
                      //   maxHeight: 5,
                      //   maxWidth: 4,
                      //   minHeight: 1,
                      //   minWidth: 1,
                      // ),
                      disabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.deepPurple,
                        ),

                      ),
                      floatingLabelStyle: TextStyle(
                        backgroundColor: Colors.yellowAccent,
                      ),
                      hoverColor: Colors.yellowAccent,
                      helperMaxLines: 5,
                      helperStyle: TextStyle(),
                      hintMaxLines: 5,
                      hintStyle: TextStyle(),
                      isCollapsed: true,
                      isDense: false,
                      prefix:  Text('User'),
                      prefixIcon: Icon(Icons.dashboard),
                      prefixIconColor: Colors.deepPurple,
                      // prefixIconConstraints: BoxConstraints(
                      //
                      // ),
                      // prefixText: 'Dhaka',
                      prefixStyle: TextStyle(),
                      suffix: Text('End'),
                      suffixStyle: TextStyle(
                        backgroundColor: Colors.deepPurple,

                      ),
                      errorMaxLines: 3,
                      enabled: true,
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            width: 10.0,
                            color: Colors.yellowAccent,
                          )
                      ),
                      // error: Text('Dhaka'),
                      focusedErrorBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.red,
                            width: 5.0,
                          )

                      )
                  ),
                ),
              ),
              Container(
                child: TextField(
                  decoration: InputDecoration(labelText: "Password",

                      prefix: Text('abc'),
                      suffix: Text('231'),
                      suffixIcon: Icon(Icons.password),
                      suffixIconColor: Colors.orange,
                      icon: Icon(Icons.security_sharp),
                      hintText: 'The Password is Number and Alphabet No Space is Allowed'
                  ),
                  obscureText: true,
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              ElevatedButton(onPressed:  (){
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => LogInScreens()));
              },
                child: Text("Go To Next"),
              ),
              const SizedBox(
                width: 5,
              ),
              ElevatedButton(onPressed: (){
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => UserRegistration()));
              },
                child: Icon(Icons.pages),
              ),
            ],
          ),
        ),

      ),

    );
  }
}