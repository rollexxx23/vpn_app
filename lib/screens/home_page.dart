import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_countdown_timer/index.dart';
import 'package:vpn_app/screens/premium_page.dart';

bool connected = false;
int endTime = DateTime.now().millisecondsSinceEpoch + 600000;
String selectedLocation = "Your Location";

class HomePageTop extends StatefulWidget {
  const HomePageTop({Key? key}) : super(key: key);

  @override
  _HomePageTopState createState() => _HomePageTopState();
}

class _HomePageTopState extends State<HomePageTop> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 25),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Home',
                  style:
                      GoogleFonts.poppins(color: Colors.white, fontSize: 27)),
              Image.asset('assets/images/Menu.png')
            ],
          ),
        ),
        SizedBox(height: 15),
        Center(
          child: Container(
            width: 170,
            height: 60,
            decoration: BoxDecoration(
              border: Border.all(
                color: Color(0xff5DBDA2),
              ),
              borderRadius: BorderRadius.all(Radius.circular(16)),
            ),
            child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              Image.asset('assets/images/Vector.png'),
              SizedBox(width: 6),
              Text(
                '${selectedLocation}',
                style: GoogleFonts.poppins(color: Colors.white, fontSize: 12),
              ),
              SizedBox(width: 3),
              Icon(
                Icons.arrow_forward_ios,
                color: Color(0xff5DBDA2),
                size: 10,
              )
            ]),
          ),
        ),
        SizedBox(height: 20),
        if (connected == false)
          InkWell(
              onTap: () {
                setState(() {
                  connected = true;
                  selectedLocation = "United States";
                  endTime = DateTime.now().millisecondsSinceEpoch + 600000;
                });
              },
              child: Image.asset('assets/images/Off Button.png'))
        else
          InkWell(
              onTap: () {
                setState(() {
                  connected = false;
                  selectedLocation = "Your Location";
                });
              },
              child: Image.asset('assets/images/On Button.png')),
        SizedBox(height: 20),
        Center(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Status : ',
                      style: GoogleFonts.poppins(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w500)),
                  (connected == false)
                      ? Text('Not Connected',
                          style: GoogleFonts.poppins(
                              color: Color(0xffD80027),
                              fontSize: 20,
                              fontWeight: FontWeight.w800))
                      : Text('Connected',
                          style: GoogleFonts.poppins(
                              color: Color(0xff5DBDA2),
                              fontSize: 20,
                              fontWeight: FontWeight.w800)),
                ],
              ),
              (connected == false)
                  ? NotConnectedWidget()
                  : ConnectedWidget(context),
            ],
          ),
        ),
      ],
    );
  }

  Widget NotConnectedWidget() {
    return Column(
      children: [
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
    );
  }

  Widget ConnectedWidget(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 10),
        CountdownTimer(
          endTime: endTime,
          textStyle: TextStyle(
              color: Color(0xfff5f5f5),
              fontWeight: FontWeight.w500,
              fontSize: 20),
        ),
        SizedBox(height: 15),
        Container(
          width: 345,
          height: 100,
          decoration: BoxDecoration(
            color: Color(0xff38383A),
            border: Border.all(
              color: Colors.transparent,
            ),
            borderRadius: BorderRadius.all(Radius.circular(20)),
          ),
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                        color: Color(0xff5DBDA2).withOpacity(0.25),
                        border: Border.all(
                          color: Colors.transparent,
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(40)),
                      ),
                      child: Center(
                          child: Icon(Icons.arrow_upward_outlined,
                              color: Color(0xff5DBDA2))),
                    ),
                    SizedBox(width: 5),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('14.83 mbps',
                            style: GoogleFonts.poppins(
                                color: Colors.white,
                                fontSize: 14,
                                fontWeight: FontWeight.w600)),
                        Text('Upload',
                            style: GoogleFonts.poppins(
                                color: Colors.white,
                                fontSize: 11,
                                fontWeight: FontWeight.w400)),
                      ],
                    ),
                  ],
                ),
                Container(
                  height: 30.0,
                  width: 1.0,
                  color: Color(0xffF5F6F8),
                  margin: const EdgeInsets.only(left: 10.0, right: 10.0),
                ),
                Row(
                  children: [
                    Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                        color: Color(0xff5DBDA2).withOpacity(0.25),
                        border: Border.all(
                          color: Colors.transparent,
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(40)),
                      ),
                      child: Center(
                          child: Icon(Icons.arrow_downward_outlined,
                              color: Color(0xff5DBDA2))),
                    ),
                    SizedBox(width: 5),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('14.83 mbps',
                            style: GoogleFonts.poppins(
                                color: Colors.white,
                                fontSize: 14,
                                fontWeight: FontWeight.w600)),
                        Text('Download',
                            style: GoogleFonts.poppins(
                                color: Colors.white,
                                fontSize: 11,
                                fontWeight: FontWeight.w400)),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
