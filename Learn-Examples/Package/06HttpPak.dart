import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Pak extends StatefulWidget {
  const Pak({super.key});

  @override
  State<Pak> createState() => _PakState();
}

class _PakState extends State<Pak> {
  List posts = [];
  Future getPost() async {
    var url = "https://jsonplaceholder.typicode.com/posts";
    var response = await http.get(Uri.parse(url));
    var responsebody = jsonDecode(response.body);
    setState(() {
      posts.addAll(responsebody);
      print(posts);
    });
  }

  @override
  void initState() {
    getPost();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: posts == null || posts.isEmpty
            ? Center(child: CircularProgressIndicator())
            : ListView.builder(
                itemCount: posts.length,
                itemBuilder: (context, i) {
                  return Container(
                      color: Colors.blueAccent,
                      margin: EdgeInsets.symmetric(vertical: 10),
                      child: Text(
                        "${posts[i]['title']}",
                        style: TextStyle(fontSize: 20),
                      ));
                }));
  }
}

