import 'package:chat_app/models/user.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class AuthRepository {
  final CollectionReference _userReference =
      Firestore.instance.collection('users');

  Future<User> login(String username, String password) async {
    return await _userReference
        .where("username", isEqualTo: username)
        .where("password", isEqualTo: password)
        .getDocuments()
        .then((documents) {
      if (documents.documents.isEmpty) {
        return null;
      } else {
        return User.fromFirestore(documents.documents.first);
      }
    });
  }

  Future<User> signUp(String username, String password) async {
    final userRef = await _userReference.add(
      {'username': username, 'password': password},
    );

    if (userRef.documentID != null) {
      return User(
        id: userRef.documentID,
        username: username,
      );
    }

    return null;
  }

  void logout() {}
}
