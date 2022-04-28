import 'package:flutter/material.dart';

class CustomBtnCategoryWidget extends StatelessWidget {
  const CustomBtnCategoryWidget({
    Key? key,
    required this.text,
    required this.color,
  }) : super(key: key);

  final String text;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30,
      width: 130,
      decoration:
          BoxDecoration(borderRadius: BorderRadius.circular(15), color: color),
      child: Center(
        child: Text(
          text.toUpperCase(),
          style: const TextStyle(
            color: Colors.white,
            fontSize: 17,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}
