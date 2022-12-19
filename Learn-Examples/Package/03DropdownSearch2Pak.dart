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
            DropdownSearch<String>(
              popupProps: PopupProps.menu(
                showSearchBox: true,
                showSelectedItems: true,
                disabledItemFn: (String s) => s.startsWith('I'),
              ),
              items: [
                "Brazil",
                "Italia (Disabled)",
                "Tunisia",
              ],
              dropdownDecoratorProps: DropDownDecoratorProps(
                dropdownSearchDecoration: InputDecoration(
                  labelText: "Menu mode",
                  hintText: "country in menu mode",
                ),
              ),
              onChanged: print,
              selectedItem: null,
            )
          ],
        ));
  }
}

