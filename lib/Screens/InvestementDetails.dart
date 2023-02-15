import 'package:flutter/material.dart';
import 'package:invest2/Components/topBar.dart';
import 'package:invest2/Constants.dart' as constants;

class InvestementDetails extends StatelessWidget {
  const InvestementDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: size.height * 0.07,
          ),
          topBar(size: size, text: 'Investment Details'),
          SizedBox(
            height: size.height * 0.03,
          ),
          SizedBox(
            height: size.height * 0.17,
            child: Image.network(
              'https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse3.mm.bing.net%2Fth%3Fid%3DOIP.rcP2iPQlNJN3KOpgN_xMsAHaGu%26pid%3DApi&f=1&ipt=05daf49bb1442b6b41f9226aa613fd4d865d7f1cbc45c02e9ef1550db68639e1&ipo=images',
              width: size.width * 0.5,
            ),
          ),
          SizedBox(
            height: size.height * 0.02,
          ),
          Column(
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
                'In publishing and graphic design, Loremipsum is a placeholder text commonly used to demonstrate the visual form of a document ',
                style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontFamily: 'Inter',
                    fontSize: size.width * 0.04,
                    color: constants.black),
              ),
              SizedBox(
                height: size.height * 0.01,
              ),
              Text(
                'Project Leader Name',
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontFamily: 'Inter',
                    fontSize: size.width * 0.035,
                    color: constants.grey),
              ),
              Text(
                'Jit Bannerjee',
                style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontFamily: 'Inter',
                    fontSize: size.width * 0.04,
                    color: constants.black),
              ),
              SizedBox(
                height: size.height * 0.01,
              ),
              Text(
                'Project Starting Time',
                style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontFamily: 'Inter',
                    fontSize: size.width * 0.035,
                    color: constants.grey),
              ),
              Text(
                '15 Feb 2023',
                style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontFamily: 'Inter',
                    fontSize: size.width * 0.04,
                    color: constants.black),
              ),
              SizedBox(
                height: size.height * 0.01,
              ),
              Text(
                'Project Expected End Date',
                style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontFamily: 'Inter',
                    fontSize: size.width * 0.035,
                    color: constants.grey),
              ),
              Text(
                '15 Feb 2024',
                style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontFamily: 'Inter',
                    fontSize: size.width * 0.04,
                    color: constants.black),
              ),
              SizedBox(
                height: size.height * 0.01,
              ),
              Text(
                'Project Cost',
                style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontFamily: 'Inter',
                    fontSize: size.width * 0.035,
                    color: constants.grey),
              ),
              Text(
                '₹200,000',
                style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontFamily: 'Inter',
                    fontSize: size.width * 0.04,
                    color: constants.black),
              ),
              SizedBox(
                height: size.height * 0.01,
              ),
              Text(
                'I am Jit Banerjeem leader of this project. I have invested 50% in the project.',
                style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontFamily: 'Inter',
                    fontSize: size.width * 0.04,
                    color: constants.black),
              ),
              Text(
                'You can invest the remaining 50% in the project.',
                style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontFamily: 'Inter',
                    fontSize: size.width * 0.04,
                    color: constants.green),
              ),
              Text(
                'If you invest 50% for one year then you will get 5% equity in this company and after completion of this project you will get 10% of your investment money.',
                style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontFamily: 'Inter',
                    fontSize: size.width * 0.04,
                    color: constants.black),
              ),
            ]
                .map((e) => Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: size.width * 0.03, vertical: 2.0),
                      child: e,
                    ))
                .toList(),
          ),
        ],
      ),
      bottomNavigationBar: Container(
        color: constants.primaryBlue,
        height: size.height * 0.1,
        width: size.width,
        child: Row(children: [
          Expanded(
              child: GestureDetector(
            onTap: () {},
            child: Container(
              color: constants.white,
              height: size.height*0.1,
              child: Row(
                children: [
                  Image.network(
                    'https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse2.mm.bing.net%2Fth%3Fid%3DOIP.DHhrBGoy7wWj4LYNVHU5rQHaEK%26pid%3DApi&f=1&ipt=da21f537cc8cf15406302980492dd065c2c226dc5c4943eda800dae7702139f5&ipo=images',
                    width: size.width*0.2,
                  ),
                  Text(
                    'HELP',
                    style: TextStyle(
                      color: constants.black,
                      fontFamily: 'Inter',
                      fontSize: 30,
                    ),
                  ),
                ],
              ),
            ),
          )),
          Expanded(
            child: TextButton(
              onPressed: () {},
              child: Text(
                'Invest Now',
                style: TextStyle(
                  color: constants.white,
                  fontFamily: 'Inter',
                  fontSize: 30,
                ),
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
