import 'package:animation_project/animateroute.dart';
import 'package:animation_project/pagetwo.dart';
import 'package:flutter/material.dart';

class PageOne extends StatefulWidget {
  const PageOne({super.key});

  @override
  State<PageOne> createState() => _PageOneState();
}

class _PageOneState extends State<PageOne> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          color: Colors.red,
          child: Center(
            child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(SlideRight(Page: PageTwo()));
                },
                child: Text("Go To Page Two")),
          )),
    );
  }
}
