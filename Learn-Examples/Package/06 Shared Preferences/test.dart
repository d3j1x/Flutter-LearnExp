import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Test extends StatefulWidget {
  const Test({super.key});
  @override
  State<Test> createState() => _TestState();
}

class _TestState extends State<Test> {
  var username;
  getPrefs() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      username = prefs.getString("name");
    });
    print("Succes");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(children: [
        Text("$username"),
        ElevatedButton(
          onPressed: () {
            getPrefs();
          },
          child: Text("get Prefs"),
        ),
      ]),
    );
  }
}

