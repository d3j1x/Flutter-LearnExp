import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin {
  AnimationController? _controller;
  Animation? _animation;

  @override
  void initState() {
    _controller =
        AnimationController(vsync: this, duration: Duration(seconds: 1));
    _animation = Tween(begin: 50.0, end: 200.0).animate(_controller!)
      ..addStatusListener((state) {
        print(state);
      })
      ..addListener(() {
        setState(() {});
        print("value ${_animation!.value}");
      });
    _controller!.forward();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Home"),
        ),
        body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Expanded(
                  flex: 6,
                  child: Container(
                    alignment: AlignmentDirectional.center,
                    child: Container(
                      margin: EdgeInsets.only(top: 50.0),
                      child: Transform.rotate(
                        angle: -3.14 / 2 * _animation!.value,
                        child: Container(
                          color: Colors.red,
                          height: 100,
                          width: 100,
                        ),
                      ),
                    ),
                  )),
              Expanded(
                  flex: 1,
                  child: Center(
                    child: FloatingActionButton(
                      onPressed: () {},
                      child: Icon(Icons.refresh),
                    ),
                  ))
            ]));
  }
}
