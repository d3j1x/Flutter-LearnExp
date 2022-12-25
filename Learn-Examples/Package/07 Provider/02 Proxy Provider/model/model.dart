import 'package:flutter/material.dart';

class MyModel with ChangeNotifier {
  String name = "smrt";

  void changeName(String val) {
    name = val;
    notifyListeners();
  }
}

class AnothorModel {
  MyModel mymodel;
  AnothorModel(this.mymodel);
  void changenameelse() {
    mymodel.changeName("s-mrket");
  }
}
