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
          padding: EdgeInsets.symmetric(horizontal: 20),
          width: double.infinity,
          child: Column(
            //mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.only(top: 100),
                padding: EdgeInsets.symmetric(vertical: 10),
                alignment: Alignment.center,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  border: Border.all(color: Colors.black, width: 2),
                ),
                child: Text(
                  "Smrt Mrket",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 20),
                width: double.infinity,
                alignment: Alignment.center,
                child: Text(
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 18,
                    height: 1.5,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 20),
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.black, width: 2)),
                child: Column(children: [
                  Row(
                    //mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Row(
                        children: [
                          Icon(Icons.star, color: Colors.yellow[700]),
                          Icon(Icons.star, color: Colors.yellow[700]),
                          Icon(Icons.star, color: Colors.yellow[700]),
                          Icon(Icons.star),
                          Icon(Icons.star),
                        ],
                      ),
                      //Expanded(child: Container()),
                      //Spacer(flex:1),
                      Spacer(),
                      Text(
                        "17 Reviews",
                        style: TextStyle(fontSize: 18),
                      ),
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 30),
                    child: Row(
                      //mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Spacer(),
                        Column(
                          children: [
                            Icon(Icons.restaurant,
                                color: Colors.green, size: 40),
                            Padding(
                                padding: EdgeInsets.all(10),
                                child: Text("Feed")),
                            Text("2-4"),
                          ],
                        ),
                        Spacer(flex: 2),
                        Column(
                          children: [
                            Icon(Icons.category, color: Colors.green, size: 40),
                            Padding(
                                padding: EdgeInsets.all(10),
                                child: Text("Feed")),
                            Text("2-4"),
                          ],
                        ),
                        Spacer(flex: 2),
                        Column(
                          children: [
                            Icon(Icons.emoji_food_beverage,
                                color: Colors.green, size: 40),
                            Padding(
                                padding: EdgeInsets.all(10),
                                child: Text("Feed")),
                            Text("2-4"),
                          ],
                        ),
                        Spacer()
                      ],
                    ),
                  )
                ]),
              ),
            ],
          ),
        ));
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
