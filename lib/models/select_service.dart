import 'package:flutter/material.dart';

class SelectService extends StatelessWidget {
  const SelectService({
    super.key, required this.color, required this.string,
  });

  final Color color;
  final String string;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60.0,
      width: 60.0,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Image.asset(
         string,
      ),
    );
  }
}