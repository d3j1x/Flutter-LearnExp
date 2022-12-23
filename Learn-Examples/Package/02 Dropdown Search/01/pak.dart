import 'package:flutter/material.dart';
import 'package:dropdown_search/dropdown_search.dart';

class Pak extends StatefulWidget {
  const Pak({super.key});

  @override
  State<Pak> createState() => _PakState();
}

class _PakState extends State<Pak> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Column(
          children: [
            DropdownSearch<String>.multiSelection(
              items: ["Brazil", "Italia (Disabled)", "Tunisia", 'Canada'],
              popupProps: PopupPropsMultiSelection.menu(
                showSelectedItems: true,
                disabledItemFn: (String s) => s.startsWith('I'),
              ),
              onChanged: print,
              selectedItems: ["Brazil"],
            )
          ],
        ));
  }
}

