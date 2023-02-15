import 'package:flutter/material.dart';
import '../Constants.dart' as constants;

class Logo extends StatelessWidget {
  final double radius;
  final String logo;
  const Logo({
    super.key, required this.radius, required this.logo,
  });

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: constants.white,
      backgroundImage: NetworkImage(logo),
      radius: radius,
    );
  }
}