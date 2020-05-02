import 'package:chat_app/models/auth/user.dart';
import 'package:chat_app/models/message/message.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class ChatRepository {
  final CollectionReference _chatReference =
      Firestore.instance.collection('chat');

  Future<Stream<List<Message>>> watchMessages() async {
    return _chatReference
        .orderBy('timestamp', descending: true)
        .limit(30)
        .snapshots()
        .map((snapshot) => snapshot.documents
            .map((doc) => Message.fromFirestore(doc))
            .toList());
  }

  Future<void> sendMessage(String message, User user) async {
    await _chatReference.add(<String, dynamic>{
      'message': message,
      'fromId': user.id,
      'from': user.username,
      'timestamp': Timestamp.now(),
    });
  }
}
