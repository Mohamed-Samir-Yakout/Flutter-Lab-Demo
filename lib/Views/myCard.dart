import 'package:Demo1/Views/displayImg.dart';
import 'package:flutter/material.dart';

class MyCard extends StatefulWidget {
  String title;
  String imgLink;
  MyCard({this.title, this.imgLink});

  @override
  _MyCardState createState() => _MyCardState();
}

class _MyCardState extends State<MyCard> {
  String imgLink = "";
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        setState(() {
          imgLink = widget.imgLink;
        });

        goToImg();
      },
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: Center(
            child: Column(
              children: [
                Text("widget.title"),
                Image.network(widget.imgLink),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    FlatButton(onPressed: null, child: Icon(Icons.thumb_up)),
                    FlatButton(onPressed: null, child: Icon(Icons.comment)),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  void goToImg() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => DisplayImg(imgUrl: imgLink)),
    );
  }
}

class CardDisplay extends StatefulWidget {
  CardDisplay({Key key}) : super(key: key);

  @override
  _CardDisplayState createState() => _CardDisplayState();
}

class _CardDisplayState extends State<CardDisplay> {
  List<String> imgs = [
    "https://picsum.photos/seed/picsum/200/300",
    "https://picsum.photos/200/300/?blur",
    "https://picsum.photos/id/870/200/300?grayscale&blur=2"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Posts',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: ListView.builder(
          padding: const EdgeInsets.all(8),
          itemCount: imgs.length,
          itemBuilder: (BuildContext context, int index) {
            return MyCard(
              imgLink: imgs[index],
              title: "hello $index",
            );
          }),
    );
  }
}
