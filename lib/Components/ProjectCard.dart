import 'package:flutter/material.dart';
import '../Constants.dart' as constants;

class ProjectCard extends StatelessWidget {
  const ProjectCard({
    super.key,
    required this.size, required this.logo, required this.projName, required this.leaderName, required this.investment, required this.press,
  });

  final Size size;
  final String logo;
  final String projName;
  final String leaderName;
  final String investment;
  final Function() press;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        height: size.height * 0.15,
        color: constants.secondaryBlue,
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            children: [
              Image.network(logo),
              Column(
                children: [
                  Text(
                    projName,
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: size.width * 0.06,
                      fontFamily: 'Inter',
                      color: constants.primaryBlue,
                    ),
                  ),

                  Text(
                    leaderName,
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: size.width * 0.04,
                      fontFamily: 'Inter',
                      color: constants.black,
                    ),
                  ),

                  Text(
                    investment,
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: size.width * 0.04,
                      fontFamily: 'Inter',
                      color: constants.black,
                    ),
                  ),

                ]
                    .map(
                      (e) => Padding(
                    padding: EdgeInsets.symmetric(horizontal: size.height * 0.02, vertical: size.height*0.008),
                    child: e,
                  ),
                )
                    .toList(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}