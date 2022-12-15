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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Page"),
        centerTitle: true,
        //leading: Text("Leading"),
        leadingWidth: 100,
        //leading: IconButton(
        //  icon: Icon(Icons.arrow_back),
        //  onPressed: () {},
        //),
        actions: [
          IconButton(icon: Icon(Icons.exit_to_app), onPressed: () {}),
          IconButton(icon: Icon(Icons.alarm), onPressed: () {}),
        ],
        backgroundColor: Colors.green,
        brightness: Brightness.dark,
        shadowColor: Colors.red,
        elevation: 25,
      ),
      //endDrawer: Drawer(),
      drawer: Drawer(
        child: Column(
          children: [
            UserAccountsDrawerHeader(
                currentAccountPicture: CircleAvatar(
                  backgroundColor: Colors.black,
                  child: Text("SM"),
                ),
                accountName: Text("Smrt"),
                accountEmail: Text("smrtmrket@gmail.com")),
            ListTile(
              title: Text("Home Page"),
              leading: Icon(Icons.home),
              onTap: () {},
            ),
            ListTile(
              title: Text("Logout"),
              leading: Icon(Icons.logout),
              onTap: () {},
            ),
            ListTile(
              title: Text("About"),
              leading: Icon(Icons.help),
              onTap: () {},
            ),
          ],
        ),
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child: Text("Smrt Mrket"),
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

