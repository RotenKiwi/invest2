import 'package:flutter/material.dart';
import 'package:invest2/Screens/HomePage.dart';
import 'package:invest2/Screens/Signup.dart';
import '../../../Components/RoundedButton.dart';
import '../Components/formField.dart';
import '../Constants.dart' as constants;

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
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
              height: size.height * 0.07,
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Log In',
                    style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontFamily: 'Inter',
                        fontSize: size.width * 0.1,
                        color: constants.primaryBlue),
                  ),
                  SizedBox(
                    width: size.width * 0.1,
                  ),
                  Image.asset(
                    'assets/images/Login.png',
                    width: size.width * 0.5,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: size.height * 0.1,
            ),
            formField(
              size: size,
              text: 'Email Address',
              textColor: constants.grey, horizontalPadding: size.width * 0.07,
            ),
            SizedBox(
              height: size.height * 0.02,
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(
                  size.width * 0.07, 0, size.width * 0.07, 0),
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
            SizedBox(
              height: size.height * 0.2,
            ),
            SizedBox(
              height: size.height * 0.08,
              child: RoundedButton(
                text: 'Login',
                press: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Homepage()));
                },
                color: constants.primaryBlue,
                textColor: constants.white,
                length: size * 0.85,
                fontsize: 30,
              ),
            ),
            TextButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Signup()));
                },
                child: Text(
                  'I don\'t have an account',
                  style: TextStyle(
                      color: constants.primaryBlue,
                      fontSize: size.width * 0.04,
                      fontWeight: FontWeight.w400),
                ))
          ],
        ),
      ),
    );
  }
}
