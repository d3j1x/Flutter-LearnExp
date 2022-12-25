import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:smrt_mrkt/model/model.dart';

class Home extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Home")),
        body: Container(
          child: Column(
            children: <Widget>[
              Consumer<MyModel>(
                builder: (context, mymodel, child) {
                  return Container(
                    child: Text(mymodel.name),
                  );
                },
              ),
              Consumer<MyModel>(
                builder: (context, mymodel, child) {
                  return ElevatedButton(
                      onPressed: () {
                        mymodel.changeName("basel");
                      },
                      child: Text("Model"));
                },
              ),
              Consumer<AnothorModel>(
                builder: (context, anothermodel, child) {
                  return ElevatedButton(
                      onPressed: () {
                        anothermodel.changenameelse();
                      },
                      child: Text("Another Model"));
                },
              )
            ],
          ),
        ));
  }
}
