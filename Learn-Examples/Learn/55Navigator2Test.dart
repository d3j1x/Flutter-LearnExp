import 'package:flutter/material.dart';

class Two extends StatelessWidget {
  const Two({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Page Two . dart")),
      body: Column(
        children: [
      Text("Page Two"),

      ElevatedButton(
        onPressed: () {
          Navigator.of(context).pushNamed("test");
        },
        child: Text("Back To Test . dart"),
      ),
      
      Padding(padding: EdgeInsets.all(20)),
      
      ElevatedButton(
        onPressed: () {
          Navigator.of(context).pushNamed("one");
        },
        child: Text("Go To Page One . dart"),
      ),
        ],
      ),
    );
  }
}

