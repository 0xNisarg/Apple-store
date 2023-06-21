import 'package:demo/core/store.dart';
import 'package:demo/models/cart.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class CartPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.canvasColor,
      appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.transparent,
          title: "Cart"
              .text
              .color(
                Theme.of(context).cardColor == Colors.black
                    ? Colors.white
                    : Colors.black,
              )
              .make()),
      body: Column(
        children: [
          _CartList().p32().expand(),
          Divider(),
          _CartTotal(),
        ],
      ),
    );
  }
}

class _CartTotal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final CartModel _cart = (VxState.store as MyStore).cart;
    return SizedBox(
      height: 200,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          VxBuilder(
            mutations: {RemoveMutation},
            builder: (context, _, __) => 
              "\$${_cart.totalPrice}"
                  .text
                  .xl5
                  .color(
                Theme.of(context).cardColor == Colors.black
                    ? Colors.white
                    : Colors.black)
                  .make() 
            ),
          ElevatedButton(
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Theme.of(context)
                    .floatingActionButtonTheme
                    .backgroundColor)),
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                content: "Buying Not Supported Yet".text.make(),
              ));
            },
            child: "Buy".text.color(Colors.white).make(),
          ).w24(context)
        ],
      ),
    );
  }
}

class _CartList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    VxState.watch(context, on: [RemoveMutation]);
    final CartModel _cart = (VxState.store as MyStore).cart;
    return _cart.items.isEmpty
        ? "Nothing to show".text.xl3.makeCentered()
        : ListView.builder(
            itemCount: _cart.items?.length,
            itemBuilder: (context, index) => ListTile(
                leading: Icon(Icons.done),
                trailing: IconButton(
                  icon: Icon(Icons.remove_circle_outline),
                  onPressed: () => RemoveMutation(_cart.items[index]),
                ),
                title: _cart.items[index].name.text.make()),
          );
  }
}
