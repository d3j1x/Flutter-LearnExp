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
  List mobile = [
    {"name": "s20 ultra", "screen": "6.2", "cpu": "8 core"},
    {"name": "s30 ultra", "screen": "6.2", "cpu": "8 core"},
    {"name": "s40 ultra", "screen": "6.2", "cpu": "8 core"},
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: Drawer(),
      body: Container(
        child: GridView.builder(
            //scrollDirection: Axis.horizontal,
            itemCount: mobile.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
               // childAspectRatio: 5,
               crossAxisCount: 2, crossAxisSpacing: 10, mainAxisSpacing: 10),
            itemBuilder: (context, i) {
              return Container(
                //margin: EdgeInsets.all(10),
                child: ListTile(
                  tileColor: Colors.red,
                  title: Text("${mobile[i]['name']}"),
                  subtitle: Text("${mobile[i]['screen']}"),
                  trailing: Text("${mobile[i]['cpu']}"),
                ),
              );
            }),
      ),
    );
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

