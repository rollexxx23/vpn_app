import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:vpn_app/screens/premium_page.dart';
import 'package:vpn_app/widgets/servers.dart';
import '../widgets/bottom_nav_bar.dart';

class LocationPage extends StatefulWidget {
  const LocationPage({Key? key}) : super(key: key);

  @override
  _LocationPageState createState() => _LocationPageState();
}

class _LocationPageState extends State<LocationPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          bottomNavigationBar: BottomNavBar(selected: 2),
          backgroundColor: Color(0xff2D2D2D),
          body: Stack(
            children: [
              LocationTopPart(),
            ],
          )),
    );
  }

  Widget LocationTopPart() {
    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Select Servers',
                    style:
                        GoogleFonts.poppins(color: Colors.white, fontSize: 27)),
                Image.asset('assets/images/Menu.png')
              ],
            ),
          ),
          SizedBox(height: 15),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text('Recommended',
                          style: GoogleFonts.poppins(
                              color: Colors.white, fontSize: 20)),
                    ],
                  ),
                  SizedBox(height: 25),
                  Server(
                    img: "usa",
                    strength: 3,
                    name: "United States",
                  ),
                  Server(img: "phl", strength: 4, name: "Philiphines"),
                  //Server()
                ],
              ),
            ),
          ),
          SizedBox(height: 30),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text('All Server',
                        style: GoogleFonts.poppins(
                            color: Colors.white, fontSize: 20)),
                  ],
                ),
                SizedBox(height: 25),
                Server(
                  img: "usa",
                  strength: 3,
                  name: "United States",
                ),
                Server(img: "phl", strength: 4, name: "Philiphines"),
                Server(
                  img: "chn",
                  strength: 2,
                  name: "China",
                ),
                Server(img: "sk", strength: 1, name: "South Korea"),

                //Server()
              ],
            ),
          ),
          SizedBox(height: 35),
          InkWell(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const PremiumPage()));
            },
            child: Container(
              width: 345,
              height: 80,
              decoration: BoxDecoration(
                color: Color(0xff5DBDA2).withOpacity(0.15),
                border: Border.all(
                  color: Colors.transparent,
                ),
                borderRadius: BorderRadius.all(Radius.circular(20)),
              ),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 8.0, horizontal: 27),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Image.asset('assets/images/icon.png'),
                        SizedBox(width: 8),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('Go Premium',
                                style: GoogleFonts.poppins(
                                    color: Colors.white,
                                    fontSize: 17,
                                    fontWeight: FontWeight.w600)),
                            Text('Unlock high speed connection',
                                style: GoogleFonts.poppins(
                                    color: Colors.white,
                                    fontSize: 11,
                                    fontWeight: FontWeight.w400)),
                          ],
                        ),
                      ],
                    ),
                    Image.asset('assets/images/click.png')
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
