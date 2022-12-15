import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Test(),
    );
  }
}

class Test extends StatefulWidget {
  const Test({super.key});
  @override
  State<Test> createState() => _TestState();
}

class _TestState extends State<Test> {
  bool notify = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: Drawer(),
      body: Center(
        child: SwitchListTile(
            title: Text("Notification .. ?"),
            subtitle: Text("Select pls"),
            isThreeLine: true,
            secondary: Icon(Icons.notifications_active),
            activeColor: Colors.black,
            activeTrackColor: Colors.black54,
            inactiveTrackColor: Colors.blue,
            inactiveThumbColor: Colors.lightGreen,
            controlAffinity: ListTileControlAffinity.leading,
            value: notify,
            onChanged: (val) {
              setState(() {
                notify = val;
                print(notify);
              });
            }),
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

