import 'package:flutter/material.dart';

class Two extends StatelessWidget {
  const Two({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Page Two . dart")),
      body: Column(
        children: [
          Text("Page Two"),
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

