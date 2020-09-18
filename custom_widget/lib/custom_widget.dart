import 'package:flutter/material.dart';

class CustomWidget extends StatelessWidget {
  final Color color;
  final Icon icon;
  CustomWidget({this.color, this.icon});

  @override
  Widget build(BuildContext context) {
    return Expanded(
          child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            width: MediaQuery.of(context).size.width / 2   -  20,
            height: 150,
            decoration: BoxDecoration(
              color: color,
              borderRadius: BorderRadius.circular(15)
            ),
            child: Center(
              child:icon
            ),
          ),
        ),
    );
  }
}
