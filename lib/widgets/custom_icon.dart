import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


enum EdibleType {edible, poisonous, mortal, unknown}

class EdibleIcon extends CustomIcon {


  final EdibleType type;

  EdibleIcon(this.type);



  @override
  // TODO: implement tooltip
  String get tooltip => 'askjdnsjndjndjnsj';
  @override
  // TODO: implement image
  String get image => 'assets/edibility/edible.png';
  @override
  // TODO: implement color
  Color get color => Colors.blue;
}


class CustomIcon extends StatelessWidget {
  final String image;
  final String tooltip;
  final Color color;
  final EdibleType type;

  const CustomIcon({Key key, this.image, this.tooltip, this.color, this.type}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Tooltip(
      message: tooltip,
      child: Container(
        width: 50,
        height: 50,
        decoration:
            BoxDecoration(image: DecorationImage(image: AssetImage(image)), color: color ?? null),
//            BoxDecoration(image: DecorationImage(image: AssetImage(image)), color: color ?? null, borderRadius: BorderRadius.circular(300)),
      ),
    );
  }
}