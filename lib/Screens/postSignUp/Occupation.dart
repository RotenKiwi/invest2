import 'package:flutter/material.dart';
import 'package:invest2/Components/RoundedButton.dart';
import 'package:invest2/Components/topBar.dart';
import '../../Constants.dart' as constants;
import 'Income.dart';

class Occupation extends StatefulWidget {
  const Occupation({Key? key}) : super(key: key);

  @override
  State<Occupation> createState() => _OccupationState();
}

class _OccupationState extends State<Occupation> {
  final Occupations = [
    'Private Sector Service',
    'Self Employed',
    'Government Service',
    'Public Sector Service',
    'Business',
    'HouseWife',
    'Professional',
    'Student',
    'Farmer',
    'Retired',
    'Service',
  ];

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double padding = 6.5;
    return Scaffold(
      //appBar: ,
      body: SingleChildScrollView(
          child: Column(
        //crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: size.height * 0.07,
          ),
          topBar(size: size, text: 'Occupations'),
          SizedBox(
            height: size.height * 0.02,
          ),
          Container(
            alignment: Alignment.centerLeft,
            width: size.width * 0.8,
            child: Text(
              'Select one of the options',
              style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontFamily: 'Inter',
                  fontSize: size.width * 0.05,
                  color: constants.primaryBlue),
            ),
          ),
          SizedBox(
            height: size.height * 0.04,
          ),
          Wrap(
            children: List<Widget>.generate(
              Occupations.length,
              (int index) {
                return Padding(
                  padding: EdgeInsets.fromLTRB(padding, 10, padding, 0),
                  child: GestureDetector(
                    //onTap: ,
                    child: Container(
                        padding: EdgeInsets.symmetric(
                            horizontal: size.width * 0.05,
                            vertical: size.width * 0.04),
                        decoration: BoxDecoration(
                            border: Border.all(
                              color: constants.primaryBlue,
                            ),
                            borderRadius:
                                BorderRadius.all(Radius.circular(20))),
                        child: Text(Occupations[index] + ' ')),
                  ),
                );
              },
            ),
          ),
          SizedBox(
            height: size.height * 0.3,
          ),
          RoundedButton(
            text: 'Continue',
            press: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Income()));
            },
            color: constants.primaryBlue,
            textColor: constants.white,
            length: size * 0.85,
            fontsize: 30,
          )
        ],
      )),
    );
  }
}
