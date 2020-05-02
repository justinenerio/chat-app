import 'package:flutter/material.dart';

class ChatButton extends StatelessWidget {
  const ChatButton({
    Key key,
    @required this.onClick,
    @required this.text,
  }) : super(key: key);

  final String text;

  final VoidCallback onClick;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onClick,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 12.0),
        decoration: BoxDecoration(
          color: Color(0xFF666666),
          borderRadius: BorderRadius.all(
            Radius.circular(3.0),
          ),
        ),
        child: Center(
          child: Text(
            text,
            style: TextStyle(
              color: Colors.white,
              fontSize: 16.0,
              letterSpacing: 1.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
