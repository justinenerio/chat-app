import 'package:chat_app/models/auth/user.dart';
import 'package:chat_app/repository/chat/chat_repository.dart';
import 'package:chat_app/store/chat/chat_notifier.dart';
import 'package:chat_app/store/chat/state/chat_state.dart';
import 'package:chat_app/ui/chat/widgets/chat_body.dart';
import 'package:chat_app/ui/chat/widgets/chat_button.dart';
import 'package:chat_app/ui/chat/widgets/chat_input.dart';
import 'package:chat_app/ui/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_state_notifier/flutter_state_notifier.dart';
import 'package:provider/provider.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({Key key, this.user}) : super(key: key);

  final User user;

  @override
  Widget build(BuildContext context) {
    final repository = Provider.of<ChatRepository>(context, listen: false);

    return MultiProvider(
      providers: [
        Provider<User>.value(value: user),
        StateNotifierProvider<ChatNotifier, ChatState>(
          create: (_) => ChatNotifier(
            ChatState([]),
            repository,
            user,
          ),
        ),
      ],
      child: Chat(),
    );
  }
}

class Chat extends StatelessWidget {
  const Chat({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Chat app'),
        centerTitle: true,
        elevation: 1,
        backgroundColor: Colors.white,
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: ChatButton(
              text: 'Log out',
              onClick: () {
                Navigator.pushReplacementNamed(context, Router.auth);
              },
            ),
          ),
        ],
      ),
      body: Column(
        children: <Widget>[
          ChatBody(),
          const SizedBox(height: 10),
          ChatInput(),
        ],
      ),
    );
  }
}
