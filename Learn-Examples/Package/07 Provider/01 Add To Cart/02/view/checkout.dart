import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:smrt_mrkt/model/cart.dart';
import 'package:smrt_mrkt/model/item.dart';

class CheckOut extends StatefulWidget {
  const CheckOut({super.key});

  @override
  State<CheckOut> createState() => _CheckOutState();
}

class _CheckOutState extends State<CheckOut> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Check Out"),
        ),
        body: Consumer<Cart>(
          builder: (context, cart, child) {
            return ListView.builder(
                itemCount: cart.basketitem.length,
                itemBuilder: (context, i) {
                  return Card(
                    child: ListTile(
                      title: Text("${cart.basketitem[i].name}"),
                      trailing: IconButton(
                          onPressed: () {
                            cart.remove(cart.basketitem[i]);
                          },
                          icon: Icon(Icons.remove)),
                    ),
                  );
                });
          },
        ));
  }
}
