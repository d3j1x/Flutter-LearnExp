import 'package:flutter/material.dart';

class Test extends StatefulWidget {
  const Test({super.key});

  @override
  State<Test> createState() => _TestState();
}

class _TestState extends State<Test> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Test Page")),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            showModalBottomSheet(
                context: context,
                builder: (context) {
                  return Container(
                    child: Text("Bottom Sheet"),
                    height: 100,
                  );
                });
          },
          child: Text("Show Model Bottom Sheet"),
        ),
      ),
    );
  }
}

