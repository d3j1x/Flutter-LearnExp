import 'package:flutter/material.dart';

class Pak extends StatefulWidget {
  const Pak({super.key});
  @override
  State<Pak> createState() => _PakState();
}
class _PakState extends State<Pak> {
  DateTime dateone = DateTime.now();
  DateTime datetwo = DateTime.now().subtract(Duration(days: 10));
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              print(DateTime.now());
              print(DateTime.now().year);
              print(DateTime.now().month);
              print(DateTime.now().day);
              print(DateTime.now().hour);
              print(DateTime.now().minute);
              print(DateTime.now().add(Duration(days: 10)));
              print(DateTime.now().add(Duration(days: 10, minutes: 11)));
              print(DateTime.now().subtract(Duration(days: 10, minutes: 11)));
              print(dateone.isBefore(datetwo)); // dateone.isAfter() //isSameMomentAs
            },
            child: Text("Show Date Time")),
      ),
    );
  }
}

