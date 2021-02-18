import 'package:Demo1/Models/Post.dart';
import 'package:flutter/material.dart';

class DisplayPost extends StatefulWidget {
  Posts post;
  DisplayPost({this.post});

  @override
  _DisplayPostState createState() => _DisplayPostState();
}

class _DisplayPostState extends State<DisplayPost> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Post'),
      ),
      body: Card(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Text(
                    widget.post.title,
                    style: TextStyle(color: Colors.red, fontSize: 30),
                  ),
                  Image.network("https://picsum.photos/seed/picsum/200/300"),
                  Text(widget.post.body, style: TextStyle(fontSize: 20)),
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
      ),
    );
  }
}
