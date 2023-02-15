import 'package:flutter/material.dart';

class formField extends StatelessWidget {
  final String text;
  final Color textColor;
  final double horizontalPadding;

  const formField({
    super.key,
    required this.size,
    required this.text,
    required this.textColor, required this.horizontalPadding,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          EdgeInsets.symmetric(horizontal: horizontalPadding, vertical: 10),
      child: TextFormField(
        decoration: InputDecoration(
          border: const OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(20.0),
            ),
          ),
          hintText: text,
          hintStyle: TextStyle(
            color: textColor,
            fontSize: size.width * 0.04,
            fontFamily: 'Poppins',
          ),
        ),
      ),
    );
  }
}
