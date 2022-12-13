import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Test(),
    );
  }
}

class Test extends StatefulWidget {
  const Test({super.key});
  @override
  State<Test> createState() => _TestState();
}

class _TestState extends State<Test> {
  var selectedCountry;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        drawer: Drawer(),
        body: Center(
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: 20),
            padding: EdgeInsets.all(10),
            color: Colors.blue,
            child: DropdownButton(
              itemHeight: 70,
              iconDisabledColor: Colors.red,
              icon: Icon(Icons.ac_unit_outlined, color: Colors.white, size: 40),
              dropdownColor: Colors.red,
              underline: Divider(thickness: 0),
              isExpanded: true,
              hint: Text("Select Country",
                  style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold)),
              items: ["USA", "UAE", "TN", "EGY"]
                  .map((e) => DropdownMenuItem(
                        child: Container(
                            height: 50,
                            width: double.infinity,
                            color: Colors.green,
                            child: Text(
                              "Country $e",
                              style: TextStyle(color: Colors.white),
                            )),
                        value: e,
                      ))
                  .toList(),
              onChanged: (val) {
                setState(() {
                  selectedCountry = val;
                });
                print("$val");
              },
              value: selectedCountry,
            ), ),
        ));
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: Drawer(),
      body: Text("\$mrt Mrk\€t",
          style: TextStyle(
              fontSize: 50,
              color: Color(0xFF021aee),
              letterSpacing: 10.0,
              wordSpacing: 10.0,
              decoration: TextDecoration.underline,
              backgroundColor: Colors.lightGreen,
              shadows: [
                Shadow(
                    color: Colors.red,
                    blurRadius: 1.0,
                    offset: Offset(50.0, 50.0)),
              ])),
    );
  }
}

