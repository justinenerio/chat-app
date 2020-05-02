import 'dart:async';

import 'package:chat_app/models/auth/user.dart';
import 'package:chat_app/models/message/message.dart';
import 'package:chat_app/repository/chat/chat_repository.dart';
import 'package:chat_app/store/chat/state/chat_state.dart';
import 'package:state_notifier/state_notifier.dart';

class ChatNotifier extends StateNotifier<ChatState> with LocatorMixin {
  ChatNotifier(ChatState state, this.repository) : super(state);

  final ChatRepository repository;

  StreamSubscription<List<Message>> _stream;
  @override
  void initState() {
    super.initState();
    getMessages();
  }

  void getMessages() async {
    repository.watchMessages().then((stream) {
      _stream = stream.listen(messageListener);
    });
  }

  void messageListener(List<Message> messages) {
    state = ChatState(messages);
  }

  @override
  void dispose() {
    _stream.cancel();
    super.dispose();
  }

  void sendMessage(String message) {
    final user = read<User>();
    repository.sendMessage(message, user);
  }
}
