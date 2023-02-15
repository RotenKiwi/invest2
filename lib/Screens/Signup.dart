import 'package:flutter/material.dart';
import 'package:invest2/Screens/postSignUp/OTPVerify.dart';
import '../../../Components/RoundedButton.dart';
import '../Components/formField.dart';
import '../Constants.dart' as constants;

class Signup extends StatefulWidget {
  const Signup({Key? key}) : super(key: key);

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  bool show = false;

  @override
  void initState() {
    super.initState();
    show = true;
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          //alignment: Alignment.topCenter,
          children: <Widget>[
            SizedBox(
              height: size.height * 0.05,
            ),
            Padding(
              padding: const EdgeInsets.all(2.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      Text(
                        'Create an Account',
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontFamily: 'Inter',
                            fontSize: size.width * 0.06,
                            color: constants.primaryBlue),
                      ),
                      Text(
                        'Invest and grow your savings',
                        style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontFamily: 'Inter',
                            fontSize: size.width * 0.035,
                            color: constants.grey),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: size.width * 0.03,
                  ),
                  Image.asset(
                    'assets/images/Signup.png',
                    width: size.width * 0.4,
                  ),
                ],
              ),
            ),
            formField(
              size: size,
              text: 'Full Name',
              textColor: constants.grey, horizontalPadding: size.width * 0.07,
            ),
            formField(
              size: size,
              text: 'Email Address',
              textColor: constants.grey, horizontalPadding: size.width * 0.07,
            ),
            formField(
              size: size,
              text: 'Phone Number',
              textColor: constants.grey, horizontalPadding: size.width * 0.07,
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(
                  size.width * 0.07, 10, size.width * 0.07, 10),
              child: TextFormField(
                obscureText: show,
                decoration: InputDecoration(
                  border: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(20.0),
                    ),
                  ),
                  suffixIcon: GestureDetector(
                    onTap: () {
                      setState(() {
                        show = !show;
                      });
                    },
                    child: Icon(
                      show ? Icons.visibility : Icons.visibility_off,
                      color: constants.grey,
                    ),
                  ),
                  labelText: 'Password',
                  labelStyle: TextStyle(
                    color: constants.grey,
                    fontSize: size.width * 0.04,
                    fontFamily: 'Poppins',
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(
                  size.width * 0.07, 10, size.width * 0.07, 10),
              child: TextFormField(
                obscureText: show,
                decoration: InputDecoration(
                  border: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(20.0),
                    ),
                  ),
                  suffixIcon: GestureDetector(
                    onTap: () {
                      setState(() {
                        show = !show;
                      });
                    },
                    child: Icon(
                      show ? Icons.visibility : Icons.visibility_off,
                      color: constants.grey,
                    ),
                  ),
                  labelText: 'Confirm Password',
                  labelStyle: TextStyle(
                    color: constants.grey,
                    fontSize: size.width * 0.04,
                    fontFamily: 'Poppins',
                  ),
                ),
              ),
            ),
            SizedBox(
              height: size.height * 0.04,
            ),
            SizedBox(
              height: size.height * 0.08,
              child: RoundedButton(
                text: 'Create Account',
                press: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => OTP()));
                },
                color: constants.primaryBlue,
                textColor: constants.white,
                length: size * 0.85,
                fontsize: 30,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
