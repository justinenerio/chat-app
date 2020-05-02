import 'package:flutter/material.dart';

class LinkWidget extends StatelessWidget {
  const LinkWidget({Key key, this.text, this.onClick}) : super(key: key);

  final String text;

  final VoidCallback onClick;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onClick,
      child: Text(
        text,
        style: TextStyle(
          decoration: TextDecoration.underline,
          color: Color(0xFF647787),
          letterSpacing: 1.0,
          fontSize: 16,
        ),
      ),
    );
  }
}
