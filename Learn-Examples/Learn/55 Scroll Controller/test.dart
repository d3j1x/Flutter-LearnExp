import 'package:flutter/material.dart';

class Test extends StatefulWidget {
  const Test({super.key});

  @override
  State<Test> createState() => _TestState();
}

class _TestState extends State<Test> {
  ScrollController sc = ScrollController();
  @override
  void initState() {
    sc = new ScrollController();
    sc.addListener(() {
      print(sc.offset);
      print("Max Scroll : ${sc.position.maxScrollExtent}");
      print("Min Scroll : ${sc.position.minScrollExtent}");
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Test Page")),
        body: ListView(controller: sc, children: [
          ElevatedButton(
              onPressed: () {
                sc.jumpTo(sc.position.maxScrollExtent);
              },
              child: Text("Jumt To Bottom")),
          ...List.generate(
            20,
            (index) => Container(
              margin: EdgeInsets.all(10),
              child: Text("Container $index"),
              color: index.isEven ? Colors.green : Colors.red,
              height: 100,
              width: double.infinity,
            ),
          ),
          ElevatedButton(
            onPressed: () {
              //sc.jumpTo(0);
              sc.animateTo(0,
                  duration: Duration(seconds: 1), curve: Curves.easeIn);
            },
            child: Text("Jumt To Up"),
          ),
        ]));
  }
}

