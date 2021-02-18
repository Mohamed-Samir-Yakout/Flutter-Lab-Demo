import 'package:Demo1/Models/Post.dart';
import 'package:Demo1/Services/postService.dart';

import 'package:Demo1/Views/displayPost.dart';
import 'package:flutter/material.dart';

class MyPost extends StatefulWidget {
  String title;

  MyPost({this.title});

  @override
  _MyPostState createState() => _MyPostState();
}

class _MyPostState extends State<MyPost> {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: Center(
          child: Column(
            children: [
              Text(widget.title),
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
    );
  }
}

class PostDisplay extends StatefulWidget {
  PostDisplay({Key key}) : super(key: key);

  @override
  _PostDisplayState createState() => _PostDisplayState();
}

class _PostDisplayState extends State<PostDisplay> {
  List<Posts> postsList = new List();

  Posts post = new Posts();

  @override
  void initState() {
    super.initState();
    getPosts();
  }

  getPosts() async {
    postsList = await PostService().getPosts();
    setState(() {});
  }

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
          itemCount: postsList.length,
          itemBuilder: (BuildContext context, int index) {
            return InkWell(
              onTap: () {
                setState(() {
                  post = postsList[index];
                });
                goToPost();
              },
              child: MyPost(
                title: postsList[index].title,
              ),
            );
          }),
    );
  }

  void goToPost() {
    Navigator.push(
      context,
      MaterialPageRoute(
          builder: (context) => DisplayPost(
                post: post,
              )),
    );
  }
}
