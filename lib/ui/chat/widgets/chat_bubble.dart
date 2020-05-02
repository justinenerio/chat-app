import 'dart:math';

import 'package:flutter/material.dart';

class ChatBubble extends StatelessWidget {
  const ChatBubble({
    Key key,
    @required this.message,
    this.sender = 'You',
    this.isMine = true,
  }) : super(key: key);

  final String message;

  final String sender;

  final bool isMine;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 12.0, vertical: 8.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment:
            isMine ? CrossAxisAlignment.end : CrossAxisAlignment.start,
        children: <Widget>[
          Bubble(
            message: message,
            isMine: isMine,
          ),
          const SizedBox(height: 2.0),
          Text(
            isMine ? 'You' : sender,
            style: TextStyle(
              color: Color(0xFF647787),
              letterSpacing: 1.0,
              fontSize: 14.0,
            ),
          )
        ],
      ),
    );
  }
}

class Bubble extends StatelessWidget {
  const Bubble({Key key, this.message, this.isMine}) : super(key: key);

  final String message;

  final bool isMine;

  Widget nip(Offset nipOffset) {
    return Transform.translate(
      offset: nipOffset,
      child: RotationTransition(
        turns: AlwaysStoppedAnimation(45 / 360),
        child: Material(
          borderRadius: BorderRadius.all(
            Radius.circular(1.5),
          ),
          color: Color(0xFF88e306),
          child: Container(
            height: 10.0,
            width: 10.0,
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    Offset nipOffset;
    AlignmentGeometry alignment;

    final rotatedNipHalfHeight = sqrt(2 * pow(10.0, 2)) / 2;
    final offset = 10.0 / 2 + rotatedNipHalfHeight;

    if (isMine) {
      nipOffset = Offset(offset - rotatedNipHalfHeight, 0.0);
      alignment = Alignment.centerRight;
    } else {
      nipOffset = Offset(-offset + rotatedNipHalfHeight, 0.0);
      alignment = Alignment.centerLeft;
    }

    return Container(
      child: Stack(
        alignment: alignment,
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(10.0),
            decoration: BoxDecoration(
              color: Color(0xFF88e306),
              borderRadius: BorderRadius.all(Radius.circular(4.0)),
            ),
            child: Text(
              message,
              textAlign: TextAlign.left,
              style: TextStyle(
                color: Colors.white,
                letterSpacing: 1.0,
                fontSize: 18.0,
              ),
            ),
          ),
          nip(nipOffset),
        ],
      ),
    );
  }
}
