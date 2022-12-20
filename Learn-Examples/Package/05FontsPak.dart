import 'package:flutter/material.dart';

class Pak extends StatefulWidget {
  const Pak({super.key});
  @override
  State<Pak> createState() => _PakState();
}

class _PakState extends State<Pak> {
  DateTime date = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Text(
          "Show Date Time",
          style: TextStyle(fontFamily: "NotoSerif"),
        ),
      ),
    );
  }
}

