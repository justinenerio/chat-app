import 'package:flutter/material.dart';

class TermsText extends StatelessWidget {
  final data = '''
    By signing up, you agree to the Terms of Service and Privacy Policy, including Cookie Use. Others will be able to find you by searching for your email address or phone number when provided.
    ''';
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        data,
        textAlign: TextAlign.justify,
        style: TextStyle(
          color: Color(0xFF647787),
          letterSpacing: 1.0,
          fontSize: 16,
        ),
      ),
    );
  }
}
