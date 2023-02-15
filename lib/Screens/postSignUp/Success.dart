import 'package:flutter/material.dart';
import '../../Constants.dart' as constants;

class Success extends StatelessWidget {
  const Success({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      color: constants.white,
      child: Column(
        children: <Widget>[
          SizedBox(
            height: size.height * 0.1,
          ),
          Image(
            height: size.height * 0.4,
            image: const AssetImage(
              'assets/images/Success.png',
            ),
          ),
          SizedBox(
            height: size.height * 0.1,
          ),
          const Text(
            'Account Created Successfully \n \t Start Your Investing Journey \n\n\n\n\n Restart your application to log In.',
            style: TextStyle(
              fontSize: 25,
              fontFamily: 'Pompiere',
              fontWeight: FontWeight.w600,
              decoration: TextDecoration.none,
              color: constants.black,
            ),
          ),
        ],
      ),
    );
  }
}
