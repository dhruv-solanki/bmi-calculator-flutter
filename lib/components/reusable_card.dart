import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {

  ReusableCard({this.col, this.childCard, this.onPressed});
  final Color col;
  final Widget childCard;
  final Function onPressed;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        child: childCard,
        margin: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
            color: col,
            borderRadius: BorderRadius.circular(10.0)
        ),
      ),
    );
  }
}