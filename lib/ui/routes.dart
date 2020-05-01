import 'package:chat_app/models/user.dart';
import 'package:chat_app/ui/auth/auth.dart';
import 'package:chat_app/ui/auth/login.dart';
import 'package:chat_app/ui/auth/sign_up.dart';
import 'package:chat_app/ui/chat/chat.dart';
import 'package:flutter/material.dart';

class Router {
  static const String auth = '/';
  static const String login = '/login';
  static const String signup = '/signup';
  static const String chat = '/chat';

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case chat:
        final user = settings.arguments as User;
        return MaterialPageRoute(builder: (_) => ChatScreen(user: user));

      case login:
        return MaterialPageRoute(builder: (_) => LoginScreen());

      case signup:
        return MaterialPageRoute(builder: (_) => SignUpScreen());

      case auth:
      default:
        return MaterialPageRoute(builder: (_) => AuthScreen());
    }
  }
}
