import 'package:flutter/material.dart';
import 'package:awesome_dialog/awesome_dialog.dart';

class Pak extends StatefulWidget {
  const Pak({super.key});

  @override
  State<Pak> createState() => _PakState();
}

class _PakState extends State<Pak> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ElevatedButton(
          onPressed: () {
            AwesomeDialog(
              context: context,
              dialogType: DialogType.info,
              animType: AnimType.rightSlide,
              title: 'Dialog Title',
              desc: 'Dialog description here....',
              btnCancelOnPress: () {},
              btnOkOnPress: () {},
            )..show();
          },
          child: Text("Show")),
    );
  }
}

