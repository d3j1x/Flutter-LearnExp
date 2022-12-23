import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
class Pak extends StatefulWidget {
  const Pak({super.key});
  @override
  State<Pak> createState() => _PakState();
}
class _PakState extends State<Pak> {
  savePrefs() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString("name", "smrt");
    print("Succes");
  }
  deletePrefs() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.remove("name");
    print("remove");
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Smrt Mrket")),
      body: Column(children: [
        ElevatedButton(
          onPressed: () async {
            await savePrefs();
          },
          child: Text("Save Prefs"),
        ),
        ElevatedButton(
          onPressed: () {
            Navigator.of(context).pushNamed("test");
          },
          child: Text("Go To Page Test"),
        ),
        ElevatedButton(
          onPressed: () {
            deletePrefs();
          },
          child: Text("Delete prefs"),
        ),
      ]),
    );
  }
}

