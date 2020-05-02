import 'package:flutter/material.dart';

class AuthButton extends StatelessWidget {
  const AuthButton({
    Key key,
    @required this.text,
    @required this.onClick,
    this.color = Colors.green,
  }) : super(key: key);

  final String text;

  final VoidCallback onClick;

  final Color color;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onClick,
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 55,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.all(
            Radius.circular(10.0),
          ),
        ),
        child: Center(
          child: Text(
            text,
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
          ),
        ),
      ),
    );
  }
}
