import 'package:flutter/material.dart';
import 'package:invest2/Components/RoundedButton.dart';
import 'package:invest2/Screens/postSignUp/Aadhar.dart';
import '../../Constants.dart' as constants;

class OTP extends StatelessWidget {
  const OTP({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    double padding = 6.5;

    Size size = MediaQuery.of(context).size;

    Padding Input = Padding(
      padding: EdgeInsets.fromLTRB(padding, 0, padding, 0),
      child: Container(
        padding: EdgeInsets.all(size.width*0.08),
        decoration: BoxDecoration(
            border: Border.all(
              color: constants.primaryBlue,
            ),
            borderRadius: BorderRadius.all(Radius.circular(20))),
        //child: ...
      ),);

    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: <Widget>[
            const SizedBox(
              height: 150,
            ),

            Container(
              width: double.infinity,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    'Verify Via OTP',
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontFamily: 'Inter',
                      fontSize: 35,
                    ),
                  ),
                  Text(
                    'Enter the OTP sent to you on ********97',
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontFamily: 'Inter',
                      fontSize: 20,
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(
              height: 70,
            ),

            Row(
              children: <Widget>[
                Expanded(child: SizedBox.shrink()),
                Input,
                Expanded(child: SizedBox.shrink()),
                Input,
                Expanded(child: SizedBox.shrink()),
                Input,
                Expanded(child: SizedBox.shrink()),
                Input,
                Expanded(child: SizedBox.shrink()),
              ],
            ),

            // ListView.builder(
            //     scrollDirection: Axis.horizontal,
            //     itemCount: 6,
            //     itemBuilder: (BuildContext context, int index) {
            //       return Container(
            //         height: 65,
            //         width: 50,
            //         padding: EdgeInsets.all(12.0),
            //         decoration: BoxDecoration(
            //           color: constants.primary,
            //           borderRadius: BorderRadius.circular(4.0),
            //
            //           //ADD child component as Text for the Number,
            //         ),
            //       );
            //     }),
            Container(
              alignment: Alignment.centerRight,
              width: size.width * 0.8,
              child: TextButton(
                onPressed: () {},
                child: const Text(
                  'Resend',
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 350,
            ),

            const Text('By continuing you agree to our Terms and Conditions'),
            const SizedBox(
              height: 10,
            ),

            RoundedButton(
              text: 'Continue',
              press: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>Aadhar()));
              },
              color: constants.primaryBlue,
              textColor: constants.white,
              length: size * 0.85,
              fontsize: 30,
            )
          ],
        ),
      ),
    );
  }
}
