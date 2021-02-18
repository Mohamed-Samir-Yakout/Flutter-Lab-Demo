import 'package:Demo1/Views/MyPosts.dart';
import 'package:flutter/material.dart';

import 'myCard.dart';

class Login extends StatefulWidget {
  Login({Key key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Card(
          color: Colors.white24,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListView(
              children: [
                TextField(
                  decoration: InputDecoration(

                      // border: OutlinedBorder(),
                      labelText: 'Email'),
                ),
                TextField(
                  obscureText: true,
                  decoration: InputDecoration(labelText: 'Password'),
                ),
                Center(
                  child: Container(
                    width: 200,
                    margin: EdgeInsets.all(20),
                    child: RaisedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => CardDisplay()),
                        );
                      },
                      textColor: Colors.white,
                      padding: EdgeInsets.all(10),
                      color: Colors.blue,
                      child: Text(
                        'Get Images',
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                  ),
                ),
                Center(
                  child: Container(
                    width: 200,
                    margin: EdgeInsets.all(20),
                    child: RaisedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => PostDisplay()),
                        );
                      },
                      textColor: Colors.white,
                      padding: EdgeInsets.all(10),
                      color: Colors.blue,
                      child: Text(
                        'Get Posts',
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                  ),
                ),
                FlatButton(onPressed: () {}, child: Text('Forgot password?')),
                Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Need an Account!!'),
                      FlatButton(onPressed: () {}, child: Text('Redister'))
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
