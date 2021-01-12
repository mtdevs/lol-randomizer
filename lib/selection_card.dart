import 'package:flutter/material.dart';
import 'constants.dart';

class SelectionCard extends StatelessWidget {
  final Function onPressed;
  final String imagePath;
  final String label;

  SelectionCard({
    @required this.onPressed,
    @required this.imagePath,
    @required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        margin: EdgeInsets.all(10.0),
        decoration: BoxDecoration(
          color: kSelectionCardColor,
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              imagePath,
              width: 60.0,
            ),
            SizedBox(
              height: 20.0,
            ),
            Text(
              label,
              style: kSelectionTextStyle,
            ),
          ],
        ),
      ),
    );
  }
}
