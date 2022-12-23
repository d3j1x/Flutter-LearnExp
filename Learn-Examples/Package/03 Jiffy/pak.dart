import 'package:flutter/material.dart';
import 'package:jiffy/jiffy.dart';

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
          child: ElevatedButton(
              onPressed: () {
                print(Jiffy(date).E);
                print(Jiffy(date).EEEE);
                print(Jiffy(date).day);
                print(Jiffy(date).j);
                print(Jiffy(date).yM);
                print(Jiffy(date).format("MMMM"));
                print(Jiffy(date).format("y - M - d"));
                print(Jiffy(date).format("y / M / d"));
                print(Jiffy(date).fromNow());
              },
              child: Text("Show Date Time")),
        ));
  }
}

