import 'package:flutter/material.dart';
import 'package:invest2/Components/RoundedButton.dart';
import 'package:invest2/Components/topBar.dart';
import 'package:invest2/Screens/postSignUp/BankDetails.dart';
import '../../Constants.dart' as constants;
import 'Success.dart';

class Income extends StatefulWidget {
  const Income({Key? key}) : super(key: key);

  @override
  State<Income> createState() => _IncomeState();
}

class _IncomeState extends State<Income> {
  final Income = [
    'Up to 1 Lakh     ',
    '1 Lakh - 5 Lakh  ',
    '5 Lakh - 10 Lakh ',
    '10 Lakh - 25 Lakh',
    '25 Lakh - 50 Lakh',
    '50 Lakh - 1 Crore',
    '1 Crore - 5 Crore',
    'More than 5 Crore',
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
              topBar(size: size, text: 'Income'),
              SizedBox(
                height: size.height * 0.02,
              ),
              Container(
                alignment: Alignment.centerLeft,
                width: size.width*0.8,
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
                  Income.length,
                      (int index) {
                    return Padding(
                      padding: EdgeInsets.fromLTRB(padding, 10, padding, 0),
                      child: GestureDetector(
                        //onTap: ,
                        child: Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: size.width * 0.06,
                                vertical: size.width * 0.04),
                            decoration: BoxDecoration(
                                border: Border.all(
                                  color: constants.primaryBlue,
                                ),
                                borderRadius: BorderRadius.all(Radius.circular(20))),
                            child: Text(Income[index] + ' ')),
                      ),
                    );
                  },
                ),
              ),
              SizedBox(height: size.height*0.3,),
              RoundedButton(text: 'Continue', press: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>BankDetails()));
              }, color: constants.primaryBlue, textColor: constants.white, length: size*0.85, fontsize: 30,)
            ],
          )),
    );
  }
}
