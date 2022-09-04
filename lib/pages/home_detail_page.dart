// ignore_for_file: public_member_api_docs, sort_constructors_first, deprecated_member_use
import 'package:demo/models/catalog.dart';
import 'package:demo/widget/home_widgets/add_to_cart.dart';
import 'package:demo/widget/themes.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class HomeDetailPage extends StatelessWidget {
  const HomeDetailPage({
    Key key, this.catalog,}) : assert(catalog!=null), super(key: key);
  final Item catalog;
  

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
      backgroundColor: context.canvasColor,
      bottomNavigationBar: Container(
        color: context.cardColor,
        child: ButtonBar(
                  alignment: MainAxisAlignment.spaceBetween,
                  buttonPadding: EdgeInsets.zero,
                  children: [
                   "\$${catalog.price}".text.bold.xl4.red800.make(),
                  AddToCart(catalog: catalog,).wh(120, 50)
                  ],
                ).p32(),
      ),
      body: SafeArea(
        bottom: false,
        child: Column(children: [
          Hero(
                tag: Key(catalog.id.toString()),
                child: Image.network(catalog.image),
                ).h32(context),
                Expanded(child: VxArc(
                  height: 30.0,
                  arcType: VxArcType.CONVEY,
                  edge: VxEdge.TOP,
                  child: Container(
                    color:context.cardColor,
                    width: context.screenWidth,
                    child: Column(
                      children: [
                        catalog.name.text.xl4.color(context.accentColor).bold.make(),
                        catalog.desc.text.textStyle(context.captionStyle).xl.make(),10.heightBox,
                        "The iPhone is a smartphone made by Apple that combines a computer, iPod The iPhone is a smartphone made by Apple. The iPhone is a smartphone made by Apple.The iPhone is a smartphone made by Apple.The iPhone is a smartphone made by Apple."
                        .text
                        .textStyle(context.captionStyle)
                        .make()
                        .p12()
                      ],
                    ).py64(),
                  ),
                ))
        ],
        ),
      ),
    );
  }
}
