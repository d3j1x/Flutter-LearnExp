import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
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
  int selectedindex = 0;
  List<Widget> widgetpages = [
    Text("Smrt Mrket", style: TextStyle(fontSize: 40)),
    HomePage()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Smrt Mrket")),
        bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Color(0xFF021aee),
          unselectedItemColor: Colors.white,
          selectedLabelStyle: TextStyle(fontWeight: FontWeight.bold),
          selectedFontSize: 20,
          iconSize: 30,
          currentIndex: selectedindex,
          backgroundColor: Colors.red,
          onTap: (index) {
            setState(() {
              selectedindex = index;
            });
            print(index);
          },
          items: [
            BottomNavigationBarItem(
                label: "widget one",
                icon: Icon(Icons.account_balance_wallet_sharp)),
            BottomNavigationBarItem(
                label: "widget Two", icon: Icon(Icons.aspect_ratio))
          ],
        ),
        body: widgetpages.elementAt(selectedindex));
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

