import 'package:flutter/material.dart';
import 'package:invest2/Components/ProjectCard.dart';
import 'package:invest2/Components/RoundedButton.dart';
import 'package:invest2/Components/topBar.dart';
import 'package:invest2/Screens/InvestementDetails.dart';
import '../Constants.dart' as constants;

class ProjDetails extends StatelessWidget {
  const ProjDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: size.height * 0.07,
          ),
          topBar(size: size, text: 'Project Details'),
          SizedBox(
            height: size.height * 0.03,
          ),
          ProjectCard(
              size: size,
              logo:
                  'https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse3.mm.bing.net%2Fth%3Fid%3DOIP.rcP2iPQlNJN3KOpgN_xMsAHaGu%26pid%3DApi&f=1&ipt=05daf49bb1442b6b41f9226aa613fd4d865d7f1cbc45c02e9ef1550db68639e1&ipo=images',
              projName: 'Project Name',
              leaderName: 'Project Leader Name',
              investment: '₹100,000 for 1 Year',
              press: () {}),
          SizedBox(
            height: size.height * 0.02,
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Project Details',
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontFamily: 'Inter',
                      fontSize: size.width * 0.06,
                      color: constants.primaryBlue),
                ),
                Text(
                  'In publishing and graphic design, Loremipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum may be used as a bc placeholder before final copy is available. \n In publishing and graphic design, Loremipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum may be used as a bc placeholder before final copy is available.',
                  style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontFamily: 'Inter',
                      fontSize: size.width * 0.04,
                      color: constants.black),
                ),
                Text(
                  'Why Invest Here',
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontFamily: 'Inter',
                      fontSize: size.width * 0.06,
                      color: constants.primaryBlue),
                ),
                Text(
                  'In publishing and graphic design, Loremipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum may be used as a bc placeholder before final copy is available. \n In publishing and graphic design, Loremipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum may be used as a bc placeholder before final copy is available.',
                  style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontFamily: 'Inter',
                      fontSize: size.width * 0.04,
                      color: constants.black),
                ),
              ]
                  .map((e) => Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: size.width * 0.015, vertical: 5.0),
                        child: e,
                      ))
                  .toList(),
            ),
          ),
          SizedBox(
            height: size.height * 0.05,
          ),
          RoundedButton(
            text: 'Invest Now',
            press: () {Navigator.push(context, MaterialPageRoute(builder: (context)=>InvestementDetails()));},
            color: constants.primaryBlue,
            textColor: constants.white,
            length: size * 0.9,
            fontsize: 30,
          )
        ],
      ),
    );
  }
}
