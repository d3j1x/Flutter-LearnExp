import 'package:flutter/material.dart';
class HomePage extends StatefulWidget {
  const HomePage({super.key});
  @override
  State<HomePage> createState() => _HomePageState();
}
class _HomePageState extends State<HomePage> {
  List notes = [
    {"note": "Smrt Mrket Is Open Source Project", "image": "sm.jpg"},
    {"note": "Smrt Mrket By d3j1x", "image": "sm.jpg"},
    {"note": "Smrt Mrket Every Smart", "image": "sm.jpg"},
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("HomePage"),
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Theme.of(context).primaryColor,
          onPressed: () {
            Navigator.of(context).pushNamed("addnotes");
          },
          child: Icon(Icons.add),
        ),
        body: Container(
          child: ListView.builder(
              itemCount: notes.length,
              itemBuilder: (context, i) {
                return Dismissible(
                    key: Key("$i"), child: ListNotes(notes: notes[i]));
              }),
        ));
  }
}
class ListNotes extends StatelessWidget {
  final notes;
  ListNotes({this.notes});
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Row(
        children: [
          Expanded(child: Image.asset("images/sm.jpg")),
          Expanded(
            flex: 2,
            child: ListTile(
              title: Text("Title"),
              subtitle: Text("${notes['note']}"),
              //subtitle: ElevatedButton(onPressed: () {}, child: Text("remove")),
              trailing: IconButton(onPressed: () {}, icon: Icon(Icons.edit)),
            ))])
    );
  }
}

