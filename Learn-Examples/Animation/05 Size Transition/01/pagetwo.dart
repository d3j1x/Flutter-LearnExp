import 'package:animation_project/animateroute.dart';
import 'package:animation_project/pageone.dart';
import 'package:flutter/material.dart';

class PageTwo extends StatefulWidget {
  const PageTwo({super.key});

  @override
  State<PageTwo> createState() => _PageTwoState();
}

class _PageTwoState extends State<PageTwo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          color: Colors.green,
          child: Center(
            child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(SlideRight(Page: PageOne()));
                },
                child: Text("Go To Page Two")),
          )),
    );
  }
}
