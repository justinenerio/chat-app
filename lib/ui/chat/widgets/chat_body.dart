import 'package:chat_app/models/auth/user.dart';
import 'package:chat_app/models/message/message.dart';
import 'package:chat_app/store/chat/chat_notifier.dart';
import 'package:chat_app/store/chat/state/chat_state.dart';
import 'package:chat_app/ui/chat/widgets/chat_bubble.dart';
import 'package:flutter/material.dart';
import 'package:flutter_state_notifier/flutter_state_notifier.dart';
import 'package:provider/provider.dart';

class ChatBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final notifer = Provider.of<ChatNotifier>(context, listen: false);
    final myId = Provider.of<User>(context, listen: false).id;

    return Container(
      child: Expanded(
        child: StateNotifierBuilder<ChatState>(
          stateNotifier: notifer,
          builder: (BuildContext context, ChatState state, Widget child) {
            return state.when(
              (List<Message> data) {
                return ListView.separated(
                  reverse: true,
                  itemCount: data.length,
                  separatorBuilder: (context, index) =>
                      const SizedBox(height: 4),
                  itemBuilder: (context, index) {
                    final message = data[index];
                    return ChatBubble(
                      message: message.message,
                      sender: message.from,
                      isMine: message.fromId == myId,
                    );
                  },
                );
              },
              loading: () => CircularProgressIndicator(),
              error: () => Container(),
            );
          },
        ),
      ),
    );
  }
}
