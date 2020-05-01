import 'package:chat_app/models/user.dart';
import 'package:chat_app/ui/routes.dart';
import 'package:flutter/material.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({Key key, this.user}) : super(key: key);

  final User user;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Chat app'),
        centerTitle: true,
        elevation: 1,
        backgroundColor: Colors.white,
        actions: <Widget>[
          FlatButton(
            child: Text('Log out'),
            onPressed: () {
              Navigator.pushReplacementNamed(context, Router.auth);
            },
          ),
        ],
      ),
      body: Center(
        child: Text(user.username),
      ),
    );
  }
}
