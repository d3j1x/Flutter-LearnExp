import 'package:flutter/material.dart';

class Life extends StatelessWidget {
  const Life({super.key});

  @override
  Widget build(BuildContext context) {
    return Directionality(
        textDirection: TextDirection.rtl,
        child: Scaffold(
            appBar: AppBar(
              title: Text("L i F e"),
            ),
            floatingActionButton: FloatingActionButton(
              backgroundColor: Theme.of(context).primaryColor,
              onPressed: () {},
              child: Icon(Icons.add),
            ),
            body: Column(
              children: [
                Spacer(),
                Container(
                  width: double.infinity,
                  child: ElevatedButton(
          onPressed: () {},
          child: Text(
            "Add Note",
            style: Theme.of(context).textTheme.headline6,
          )),
                ),
                Spacer(),
                Container(
          width: double.infinity,
          alignment: Alignment.center,
          child: Text(
            "Theme",
            style: Theme.of(context).textTheme.headline4,
          ),
                ),
                Spacer()
              ],
            )));
  }
}

