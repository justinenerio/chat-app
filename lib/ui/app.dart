import 'package:chat_app/repository/auth/auth_repository.dart';
import 'package:chat_app/repository/chat/chat_repository.dart';
import 'package:chat_app/ui/routes.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider(
          create: (_) => AuthRepository(),
        ),
        Provider(
          create: (_) => ChatRepository(),
        ),
      ],
      child: MaterialApp(
        title: 'Chat App',
        theme: ThemeData(
          primarySwatch: Colors.lightGreen,
          visualDensity: VisualDensity.adaptivePlatformDensity,
          scaffoldBackgroundColor: Colors.white,
        ),
        onGenerateRoute: Router.generateRoute,
        builder: (context, child) {
          return Center(
            child: ConstrainedBox(
              constraints: BoxConstraints(maxWidth: 500),
              child: child,
            ),
          );
        },
      ),
    );
  }
}
