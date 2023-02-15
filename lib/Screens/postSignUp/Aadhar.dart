import 'package:flutter/material.dart';
import 'package:invest2/Components/formField.dart';
import '../../Components/RoundedButton.dart';
import '../../Constants.dart' as constants;
import 'PAN.dart';

class Aadhar extends StatelessWidget {
  const Aadhar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
        //crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          SizedBox(
            height: size.height * 0.2,
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Card(
              shadowColor: Colors.black,
              elevation: 5,
              child: Row(
                children: <Widget>[
                  Image(
                    image: AssetImage('assets/images/Aadhar.png'),
                    width: size.width * 0.5,
                  ),
                  SizedBox(
                    width: size.width * 0.4,
                    child: Text(
                      'Add Aadhar Details',
                      style: TextStyle(
                        fontSize: 30,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w500,
                      ),
                      softWrap: true,
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: size.height * 0.1,
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 0.0),
            child: Container(
                width: size.width * 0.9,
                padding: const EdgeInsets.all(8.0),
                child: formField(
                    size: size,
                    text: 'Enter Your Aadhar Number',
                    textColor: constants.grey, horizontalPadding: 0,)),
          ),
          SizedBox(
            height: size.height * 0.3,
          ),
          RoundedButton(
            text: 'Submit',
            press: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => PAN()));
            },
            color: constants.primaryBlue,
            textColor: Colors.white,
            length: size * 0.85,
            fontsize: 30,
          )
        ],
      ),
    );
  }
}
