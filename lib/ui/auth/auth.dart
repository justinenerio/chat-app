import 'package:chat_app/ui/auth/widgets/chat_button.dart';
import 'package:chat_app/ui/routes.dart';
import 'package:flutter/material.dart';

class AuthScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Center(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 16.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                SizedBox(
                  child: Image.asset('assets/images/chat_logo.png'),
                  height: 150,
                  width: 150,
                ),
                Text(
                  'Chat app',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 36,
                    letterSpacing: 5.0,
                  ),
                ),
                const SizedBox(height: 60),
                ChatButton(
                  text: 'Sign up',
                  color: Color(0xFF62a304),
                  onClick: () => Navigator.pushNamed(context, Router.signup),
                ),
                const SizedBox(height: 15),
                ChatButton(
                  text: 'Login',
                  color: Color(0xFF88e306),
                  onClick: () => Navigator.pushNamed(context, Router.login),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
