import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:smrt_mrkt/model/item.dart';
import 'package:smrt_mrkt/model/cart.dart';
import 'package:smrt_mrkt/view/checkout.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<Item> items = [
    Item(name: "S20 ultra", price: 250),
    Item(name: "P30 pro", price: 600),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Home"), actions: [
          Row(children: [
            IconButton(
              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) {
                  return CheckOut();
                }));
              },
              icon: Icon(Icons.add_shopping_cart),
            ),
            Padding(
                padding: const EdgeInsets.only(right: 10),
                child: Consumer<Cart>(
                  builder: (context, cart, child) {
                    //return Text("${cart.count}");
                    return Text("${cart.totalprice}");
                  },
                ))
          ])
        ]),
        body: ListView.builder(
          itemCount: items.length,
          itemBuilder: (context, i) {
            return Card(child: Consumer<Cart>(
              builder: (context, cart, child) {
                return ListTile(
                  title: Text("${items[i].name}"),
                  trailing: IconButton(
                    onPressed: () {
                      cart.add(items[i]);
                    },
                    icon: Icon(Icons.add),
                  ),
                );
              },
            ));
          },
        ));
  }
}
