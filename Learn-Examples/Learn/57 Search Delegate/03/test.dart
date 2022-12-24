import 'package:flutter/material.dart';

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
        actions: [
          IconButton(
            onPressed: () {
              showSearch(context: context, delegate: DataSearch());
            },
            icon: Icon(Icons.search),
          ),
        ],
        title: Text("Test Page"),
      ),
      body: Center(
        child: Text('Smrt-Mrkt', style: TextStyle(fontSize: 30)),
      ),
    );
  }
}

class DataSearch extends SearchDelegate {
  List names = ["smrt", "mrkt", "shi", "heb", "din"];
  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(
        onPressed: () {
          query = "";
        },
        icon: Icon(Icons.close),
      )
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
      onPressed: () {
        close(context, null);
      },
      icon: Icon(Icons.arrow_back),
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    return Text("$query");
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    List filternames =
        names.where((element) => element.contains(query)).toList();
    //names.where((element) => element.startsWith(query)).toList();

    return ListView.builder(
        itemCount: query == "" ? names.length : filternames.length,
        itemBuilder: (context, i) {
          return InkWell(
            onTap: () {
              query = query == "" ? names[i] : filternames[i];
              showResults(context);
            },
            child: Container(
                padding: EdgeInsets.all(20),
                child: query == ""
                    ? Text(
                        "${names[i]}",
                        style: TextStyle(fontSize: 20),
                      )
                    : Text(
                        "${filternames[i]}",
                        style: TextStyle(fontSize: 20),
                      )),
          );
        });
  }
}

