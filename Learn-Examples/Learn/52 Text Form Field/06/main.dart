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
    GlobalKey<FormState> formstate = new GlobalKey<FormState>();
    send() {
      var formdata = formstate.currentState;
      if (formdata!.validate()) {
        print("Valid");
      } else {
        print("Non Valid");
      }
    }

    return Scaffold(
      appBar: AppBar(title: Text("Smrt Mrket")),
      body: Form(
        autovalidateMode: AutovalidateMode.always,
        key: formstate,
        child: Column(children: [
          TextFormField(
            validator: (text) {
              if (text!.length < 4) {
                return "no...t Corr...ect less than 4";
              }
              return null;
            },
          ),
          ElevatedButton(onPressed: send, child: Text("Send"))
        ]),
      ),
    );
  }
}




// 1 - Create GlobaKey <FormState>
// 2 - Form => Key => GlobalKey

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

