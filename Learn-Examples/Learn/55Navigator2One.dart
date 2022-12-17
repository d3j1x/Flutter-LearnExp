import 'package:flutter/material.dart';
import 'package:first_flutter_project/two.dart';

class One extends StatelessWidget {
  const One({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Page One . dart")),
      body: Column(
        children: [
          Text("Page One"),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).pushNamed("two");
            },
            child: Text("Go To Page Two . dart"),
          ),
          Padding(padding: EdgeInsets.all(20)),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).pushNamed("test");
            },
            child: Text("Back To Test . dart"),
          ),
        ],
      ),
    );
  }
}

