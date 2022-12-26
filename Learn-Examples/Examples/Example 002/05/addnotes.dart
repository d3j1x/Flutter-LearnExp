import 'package:flutter/material.dart';

class AddNotes extends StatefulWidget {
  const AddNotes({super.key});
  @override
  State<AddNotes> createState() => _AddNotesState();
}
class _AddNotesState extends State<AddNotes> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Add Note"),
      ),
      body: Container(
          child: Column(
        children: [
          Form(
              child: Column(children: [
            TextFormField(
              maxLength: 30,
              decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  labelText: "Title Note",
                  prefixIcon: Icon(Icons.note)),
            ),
            TextFormField(
              minLines: 1,
              maxLines: 4,
              maxLength: 200,
              decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  labelText: "Description Note",
                  prefixIcon: Icon(Icons.description)),
            ),
            ElevatedButton(
              onPressed: () {
                showBottomSheet();
              },
              child: Text("Add Photo"),
            ),
            Padding(padding: EdgeInsets.all(10)),
            ElevatedButton(
                onPressed: () {},
                child: Text(
                  "Add Note",
                  style: Theme.of(context).textTheme.headline6,
                ))
          ]))
        ],
      )),
    );
  }

  showBottomSheet() {
    return showModalBottomSheet(
        context: context,
        builder: (context) {
          return Container(
            padding: EdgeInsets.all(20),
            height: 200,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Pls Choose Image",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
                InkWell(
                    onTap: () {},
                    child: Container(
                        width: double.infinity,
                        padding: EdgeInsets.all(10),
                        child: Row(
                          children: [
                            Icon(Icons.photo),
                            SizedBox(width: 20),
                            Text("  From Gallery  "),
                          ],
                        ))),
                InkWell(
                    onTap: () {},
                    child: Container(
                        width: double.infinity,
                        padding: EdgeInsets.all(10),
                        child: Row(
                          children: [
                            Icon(Icons.camera),
                            SizedBox(width: 20),
                            Text("  From Camera  "),
                          ],
                        ))),
              ],
            ),
          );
        });
  }
}

