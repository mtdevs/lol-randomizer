import 'package:flutter/material.dart';

class BottomActionButton extends StatelessWidget {
  final Function onPressed;
  final Color color;
  final String text;

  BottomActionButton({
    @required this.onPressed,
    @required this.color,
    @required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        color: color,
        child: Center(
          child: Text(
            text,
            style: TextStyle(
              fontSize: 16.0,
              fontFamily: 'Friz Regular',
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
