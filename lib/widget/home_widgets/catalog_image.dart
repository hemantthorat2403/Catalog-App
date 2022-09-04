import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
import '../../widget/themes.dart';

class CatalogImage extends StatelessWidget {
  const CatalogImage({
    Key key,
    this.image,
  }) : super(key: key);
  final String image;
  @override
  Widget build(BuildContext context) {
    return Image.network(image,
    ).box.rounded.p8.color(context.canvasColor).make().p16().wPCT(context: context, widthPCT:context.isMobile?40:20);
  }
}
