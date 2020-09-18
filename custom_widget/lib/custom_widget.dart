import 'package:flutter/material.dart';

class CustomWidget extends StatelessWidget {
  final Color color;
  final Widget child;
  CustomWidget({this.color, this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(15)
      ),
      child: Center(
        child:child
      ),
    );
  }
}
