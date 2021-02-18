import 'package:Demo1/Models/Post.dart';
import 'package:dio/dio.dart';

class PostService {
  String url = "https://jsonplaceholder.typicode.com/posts";

  Future<List<Posts>> getPosts() async {
    List<Posts> posts = new List();
    Response response;

    Dio dio = new Dio();

    response = await dio.get(url);
    var data = response.data;
    data.forEach((value) {
      posts.add(Posts.fromJson(value));
    });
    return posts;
  }
}
