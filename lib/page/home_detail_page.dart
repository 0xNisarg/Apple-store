import 'package:demo/models/catalog.dart';
import 'package:demo/widgets/home_widgets/add_to_cart.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class HomeDetailPage extends StatelessWidget {
  final Item catalog;

  const HomeDetailPage({Key? key, required this.catalog}) :assert(catalog!=null), super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.black,),
      backgroundColor: Colors.white, //creame colour
      bottomNavigationBar: Container(
        color: context.cardColor,
        child: ButtonBar(
          alignment: MainAxisAlignment.spaceBetween,
          buttonPadding: EdgeInsets.zero,
                children: [
                  "\$${catalog.price}".text.bold.color(
                  Theme.of(context).cardColor == Colors.black
                      ? Colors.white
                      : Colors.black,
                ).xl2.make(),
                  AddToCart(catalog: catalog).wh(120, 40)
                ],
              ).p32(),
      ),
      body: SafeArea(
        bottom: false,
        child: Column(
          children: [
            Hero(
              tag: Key(catalog.id.toString()),
              child: Image.network(catalog.image)
            ).h32(context),
            Expanded(child: VxArc(
              height: 30.0,
              arcType: VxArcType.convey,
              edge: VxEdge.top,
              child: Container(
                color: context.cardColor,
                width: context.screenWidth,
                child: Column(
                  children: [
                    catalog.name.text.xl4.color(
                                Theme.of(context).cardColor == Colors.black
                                    ? Colors.white
                                    : Colors.black,
                              ).bold.make(),
                    catalog.desc.text.textStyle(context.captionStyle).xl.make(),
                    10.heightBox,
                    "Ut amet dolore amet amet et, sea magna rebum labore et no lorem eos amet vero, sed magna eirmod erat et rebum. Sea stet sit ipsum et sed sea diam ipsum sadipscing, eirmod lorem elitr sit at takimata sea elitr tempor, sea eos sit takimata sea aliquyam, lorem dolores et.".text.textStyle(context.captionStyle)
                              .make().p16()
                  ],
                ).py64(),
              )
            )
            )
          ],
        ),
      ),
    );
  }
}