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
              child: Column(
            children: [
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
                onPressed: () {},
                child: Text("Add Photo"),
              ),
              ElevatedButton(
                onPressed: () {},
                child: Text(
                  "Add Note",
                  style: Theme.of(context).textTheme.headline6,
                ),
              ),
            ],
          ))
        ],
      )),
    );
  }
}

