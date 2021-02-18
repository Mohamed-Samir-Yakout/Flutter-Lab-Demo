import 'package:flutter/material.dart';

class DisplayImg extends StatefulWidget {
  String imgUrl;
  DisplayImg({this.imgUrl});

  @override
  _DisplayImgState createState() => _DisplayImgState();
}

class _DisplayImgState extends State<DisplayImg> {
  @override
  Widget build(BuildContext context) {
    return Image.network(widget.imgUrl);
  }
}
