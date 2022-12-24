import 'package:flutter/material.dart';

class One extends StatelessWidget {
  const One({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Page One . dart")),
      body: Column(
        children: [
          Text("Page One"),
          ElevatedButton(
            onPressed: () {
            if(Navigator.of(context).canPop()){
            	// canPop : return bool
            	Navigator.of(context).pop();
            }

            },
            child: Text("Back"),
          ),
        ],
      ),
    );
  }
}

