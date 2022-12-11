import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Login(),
    );
  }
}



class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: Drawer(),
      body: Container(
        width: double.infinity,
        height: 200,
        margin: EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: Colors.red,
          image: DecorationImage(
            //NetworkImage or AssetImage
            //fit: BoxFit.fill,
            //fit: BoxFit.contain,
            fit: BoxFit.cover,
            image: NetworkImage(
                "https://cdn.dribbble.com/users/2522374/screenshots/7911727/google-logo.png"),
          ),
        ),
        child: Text("How are you",
            style: TextStyle(fontSize: 30, backgroundColor: Colors.blue)),
      ),
    );
  }
}


class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: Drawer(),
      body: Text("\$mrt Mrk\€t",
          style: TextStyle(
              fontSize: 50,
              color: Color(0xFF021aee),
              letterSpacing: 10.0,
              wordSpacing: 10.0,
              decoration: TextDecoration.underline,
              backgroundColor: Colors.lightGreen,
              shadows: [
                Shadow(
                    color: Colors.red,
                    blurRadius: 1.0,
                    offset: Offset(50.0, 50.0)),
              ])),
    );
  }
}



