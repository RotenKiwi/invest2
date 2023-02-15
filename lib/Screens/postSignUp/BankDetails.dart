import 'package:flutter/material.dart';
import 'package:invest2/Components/RoundedButton.dart';
import 'package:invest2/Components/formField.dart';
import '../../Components/topBar.dart';
import '../../Constants.dart' as constants;
import 'Success.dart';

class BankDetails extends StatefulWidget {
  BankDetails({Key? key}) : super(key: key);

  @override
  State<BankDetails> createState() => _BankDetailsState();
}

class _BankDetailsState extends State<BankDetails> {
  String dropDownValue = '';

  final Banks = [
    'Axis Bank',
    'Retail Bank',
    'Federal Bank',
    'HDFC Bank',
    'ICICI Bank',
    'Indian Bank',
  ];

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              SizedBox(
                height: size.height * 0.07,
              ),
              topBar(size: size, text: 'BankDetails'),
              SizedBox(
                height: size.height * 0.04,
              ),
              const Text(
                'Add Bank Details',
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontFamily: 'Inter',
                  fontSize: 25,
                  color: constants.primaryBlue,
                ),
              ),
              SizedBox(
                height: size.height * 0.02,
              ),
              formField(
                  size: size,
                  text: 'Full Name',
                  textColor: constants.grey,
                  horizontalPadding: size.width * 0.07),
              formField(
                  size: size,
                  text: 'Bank Name',
                  textColor: constants.grey,
                  horizontalPadding: size.width * 0.07),
              formField(
                  size: size,
                  text: 'Branch Name',
                  textColor: constants.grey,
                  horizontalPadding: size.width * 0.07),
              formField(
                  size: size,
                  text: 'IFSC Code',
                  textColor: constants.grey,
                  horizontalPadding: size.width * 0.07),
              formField(
                  size: size,
                  text: 'Account Number',
                  textColor: constants.grey,
                  horizontalPadding: size.width * 0.07),
              formField(
                  size: size,
                  text: 'Address',
                  textColor: constants.grey,
                  horizontalPadding: size.width * 0.07),
              SizedBox(
                height: size.height * 0.1,
              ),
              RoundedButton(
                text: 'Submit',
                press: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Success()));
                },
                color: constants.primaryBlue,
                textColor: constants.white,
                length: size * 0.85,
                fontsize: 30,
              )
            ],
          ),
        ));
  }
}
