import 'package:flutter/material.dart';
import 'package:smrt_mrkt/model/sqldb.dart';

class Home extends StatelessWidget {
  Home({super.key});
  SqlDb sqlDb = SqlDb();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Home")),
      body: Container(
        child: Column(
          children: [
            Center(
              child: MaterialButton(
                color: Colors.red,
                textColor: Colors.white,
                onPressed: () async {
                  int response = await sqlDb
                      .insertData("INSERT INTO notes (note) VALUES (note one)");
                  print(response);
                },
                child: Text("INSERT DATA"),
              ),
            ),
            Center(
              child: MaterialButton(
                color: Colors.red,
                textColor: Colors.white,
                onPressed: () async {
                  List<Map> response =
                      await sqlDb.readData("SELECT * FROM notes");
                  print("$response");
                },
                child: Text("READ DATA"),
              ),
            )
          ],
        ),
      ),
    );
  }
}
