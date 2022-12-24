import 'dart:ffi';

import 'package:flutter/material.dart';

class Pak extends StatefulWidget {
  const Pak({super.key});

  @override
  State<Pak> createState() => _PakState();
}

class _PakState extends State<Pak> {
  Future getData() async {
    print("Start Function");
    await Future.delayed(Duration(seconds: 3), () {
      print("Smrt Mrkt");
    });
    print("End Function");
  }

  @override
  void initState() {
    getData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(), body: Text("Hello"));
  }
}

