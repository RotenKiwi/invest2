import 'package:flutter/material.dart';
import 'package:invest2/Components/Logo.dart';
import 'package:invest2/Screens/MyInvestments.dart';
import 'package:invest2/Screens/UpcomingProjects.dart';
import '../Components/ProjectCard.dart';
import '../Constants.dart' as constants;
import 'ProjectDeatils.dart';

class Homepage extends StatelessWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
        children: [
          Card(
            color: constants.primaryBlue,
            elevation: 3,
            shadowColor: constants.black,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(20.0),
              bottomRight: Radius.circular(20.0),
            )),
            child: Container(
              height: size.height * 0.25,
              child: Row(
                children: [
                  Logo(
                    radius: size.width * 0.14,
                    logo:
                        'https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse4.mm.bing.net%2Fth%3Fid%3DOIP.u28Rpy5VYk8N0Wyr7WYaOQHaHa%26pid%3DApi&f=1&ipt=ceeaf842bf5fa41e97e616d9385c34b920e7a3571cf4e3f936c3e22c26fc8914&ipo=images',
                  ),
                  Text(
                    'Hi Investor',
                    style: TextStyle(
                      color: constants.white,
                      fontWeight: FontWeight.w500,
                      fontSize: size.width * 0.075,
                      fontFamily: 'Inter',
                    ),
                  ),
                ]
                    .map((widget) => Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: size.width * 0.05,
                              vertical: size.height * 0.05),
                          child: widget,
                        ))
                    .toList(),
              ),
            ),
          ),
          //SizedBox(height: size.height*0.01,),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: size.width * 0.05, vertical: size.height * 0.02),
              child: Container(
                //color: constants.secondaryBlue,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(8.0)),
                  color: constants.secondaryBlue,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'Upcoming Projects',
                    style: TextStyle(
                      color: constants.primaryBlue,
                      fontFamily: 'Inter',
                      fontSize: size.width * 0.04,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: ListView(
              padding: EdgeInsets.zero,
              children: [
                ProjectCard(
                  size: size,
                  logo:
                      'https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse2.mm.bing.net%2Fth%3Fid%3DOIP.gFzgzQCosN-BgwM21t0kTAHaHa%26pid%3DApi&f=1&ipt=fcf7949b30b0a8efc6306b438e52de8000b2979949c984ef37af54967fc81b47&ipo=images',
                  projName: 'Project Name',
                  leaderName: 'Project Leader Name',
                  investment: '₹100,000 for 1 year',
                  press: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => ProjDetails()));
                  },
                ),
                ProjectCard(
                  size: size,
                  logo:
                      'https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse3.mm.bing.net%2Fth%3Fid%3DOIP.rcP2iPQlNJN3KOpgN_xMsAHaGu%26pid%3DApi&f=1&ipt=05daf49bb1442b6b41f9226aa613fd4d865d7f1cbc45c02e9ef1550db68639e1&ipo=images',
                  projName: 'Project Name',
                  leaderName: 'Project Leader Name',
                  investment: '₹100,000 for 1 year',
                  press: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => ProjDetails()));
                  },
                ),
                ProjectCard(
                  size: size,
                  logo:
                      'https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse4.mm.bing.net%2Fth%3Fid%3DOIP.kKg_dF5Hhdqtqt-NUV7CGAHaHa%26pid%3DApi&f=1&ipt=4d0c11b36d07222e39a19e2208a1ae816f90cdf869918e69e8049dd66fae5f83&ipo=images',
                  projName: 'Project Name',
                  leaderName: 'Project Leader Name',
                  investment: '₹100,000 for 1 year',
                  press: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => ProjDetails()));
                  },
                ),
                ProjectCard(
                  size: size,
                  logo:
                      'https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse1.mm.bing.net%2Fth%3Fid%3DOIP.SdcsBQ6_DHtF12gwh1t0TgAAAA%26pid%3DApi&f=1&ipt=1464affd08b59018b374ee51c44993217b1895e21cb71efa19346b5d1747b19d&ipo=images',
                  projName: 'Project Name',
                  leaderName: 'Project Leader Name',
                  investment: '₹100,000 for 1 year',
                  press: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => ProjDetails()));
                  },
                ),
                ProjectCard(
                  size: size,
                  logo:
                      'https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse2.mm.bing.net%2Fth%3Fid%3DOIP.gFzgzQCosN-BgwM21t0kTAHaHa%26pid%3DApi&f=1&ipt=fcf7949b30b0a8efc6306b438e52de8000b2979949c984ef37af54967fc81b47&ipo=images',
                  projName: 'Project Name',
                  leaderName: 'Project Leader Name',
                  investment: '₹100,000 for 1 year',
                  press: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => ProjDetails()));
                  },
                ),
              ]
                  .map(
                    (e) => Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: 0, vertical: size.height * 0.005),
                      child: e,
                    ),
                  )
                  .toList(),
            ),
          ),
        ],
      ),
      bottomNavigationBar: ClipRRect(
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20.0), topRight: Radius.circular(20.0)),
        child: Container(
          color: constants.primaryBlue,
          height: size.height * 0.1,
          width: size.width,
          child: Row(children: [
            Expanded(
              child: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.home_outlined,
                  color: constants.black,
                ),
                iconSize: size.width * 0.1,
              ),
            ),
            Expanded(
              child: IconButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => UpcomingProjects()));
                },
                icon: Icon(
                  Icons.monitor_heart,
                  color: constants.white,
                ),
                iconSize: size.width * 0.1,
              ),
            ),
            Expanded(
              child: IconButton(
                onPressed: () {Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => MyInvestments()));},
                icon: Icon(
                  Icons.wallet,
                  color: constants.white,
                ),
                iconSize: size.width * 0.1,
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
