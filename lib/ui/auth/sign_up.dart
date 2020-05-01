import 'package:chat_app/models/user.dart';
import 'package:chat_app/store/auth/signup_notifier.dart';
import 'package:chat_app/store/auth/state/auth_state.dart';
import 'package:chat_app/ui/auth/widgets/chat_button.dart';
import 'package:chat_app/ui/auth/widgets/clickable_link.dart';
import 'package:chat_app/ui/auth/widgets/input_form.dart';
import 'package:chat_app/ui/auth/widgets/terms_text.dart';
import 'package:chat_app/ui/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_state_notifier/flutter_state_notifier.dart';
import 'package:provider/provider.dart';

class SignUpScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StateNotifierProvider<SignUpNotifier, AuthState>(
      create: (_) => SignUpNotifier(AuthState.initial()),
      child: SignUp(),
    );
  }
}

class SignUp extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();
  final auth = FormModel();

  void onLoginClick(BuildContext context) {
    Navigator.pushReplacementNamed(context, Router.login);
  }

  void onSignUpClick(BuildContext context) {
    if (_formKey.currentState.validate()) {
      _formKey.currentState.save();
      context.read<SignUpNotifier>().signUp(auth.username, auth.password);
    }
  }

  void _showDialog(BuildContext context) async {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text("Error"),
          content: Text("Please try again"),
          actions: [
            FlatButton(
              child: Text("OK"),
              onPressed: () {
                Navigator.of(context).pop();
              },
            )
          ],
        );
      },
    );
  }

  void onSignUpSuccess(BuildContext context, User user) {
    Navigator.pushNamedAndRemoveUntil(context, Router.chat, (route) => false,
        arguments: user);
  }

  void listener(BuildContext context) {
    context.watch<AuthState>().maybeWhen(
          success: (User user) {
            WidgetsBinding.instance
                .addPostFrameCallback((_) => onSignUpSuccess(context, user));
          },
          error: () {
            WidgetsBinding.instance
                .addPostFrameCallback((_) => _showDialog(context));
          },
          orElse: () {},
        );
  }

  @override
  Widget build(BuildContext context) {
    listener(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('Chat app'),
        centerTitle: true,
        elevation: 1,
        backgroundColor: Colors.white,
      ),
      body: Container(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            InputForm(
              formModel: auth,
              formKey: _formKey,
            ),
            const SizedBox(height: 15),
            context.watch<AuthState>().maybeMap(
                  loading: (_) => CircularProgressIndicator(),
                  orElse: () => ChatButton(
                    text: 'Sign Up',
                    color: Color(0xFF88e306),
                    onClick: () => onSignUpClick(context),
                  ),
                ),
            const SizedBox(height: 8),
            LinkWidget(
              text: 'Login',
              onClick: () => onLoginClick(context),
            ),
            const SizedBox(height: 30),
            TermsText(),
          ],
        ),
      ),
    );
  }
}