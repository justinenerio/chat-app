import 'package:chat_app/store/chat/chat_notifier.dart';
import 'package:chat_app/ui/chat/widgets/chat_button.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ChatInput extends StatefulWidget {
  @override
  _ChatInputState createState() => _ChatInputState();
}

class _ChatInputState extends State<ChatInput> {
  final _textEditingController = TextEditingController();

  @override
  void dispose() {
    _textEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          const SizedBox(width: 20),
          Flexible(
            child: Container(
              child: TextField(
                style: TextStyle(fontSize: 15.0),
                controller: _textEditingController,
                decoration: InputDecoration.collapsed(
                  hintText: 'Start a new message',
                  hintStyle: TextStyle(color: Colors.grey),
                ),
              ),
            ),
          ),
          Material(
            child: Container(
              padding: EdgeInsets.symmetric(
                vertical: 8.0,
                horizontal: 16.0,
              ),
              child: ChatButton(
                text: 'send',
                onClick: () {
                  context
                      .read<ChatNotifier>()
                      .sendMessage(_textEditingController.value.text);
                  _textEditingController.clear();
                },
              ),
            ),
            color: Colors.white,
          ),
        ],
      ),
      width: double.infinity,
      height: 50.0,
      decoration: BoxDecoration(
          border: Border(
            top: BorderSide(color: Colors.grey, width: 0.5),
          ),
          color: Colors.white),
    );
  }
}
