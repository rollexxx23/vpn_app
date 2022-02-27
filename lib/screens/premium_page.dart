import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:vpn_app/widgets/bottom_nav_bar.dart';
import 'package:carousel_slider/carousel_slider.dart';

final List<String> planList = ["Silver Plan", 'Gold Plan', 'VIP'];
final List<int> planPrice = [20, 30, 50];

final CarouselController _controller = CarouselController();
int _current = 0;

class PremiumPage extends StatefulWidget {
  const PremiumPage({Key? key}) : super(key: key);

  @override
  _PremiumPageState createState() => _PremiumPageState();
}

final List<Widget> imageSliders = planList
    .map((item) => Container(
        decoration: BoxDecoration(
          color: Color(0xff393939),
          border: Border.all(color: Colors.transparent),
          borderRadius: BorderRadius.all(Radius.circular(20)),
        ),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                item,
                style: GoogleFonts.poppins(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w600),
              ),
              SizedBox(height: 10),
              //Unlock premium for connectios
              Text(
                'Unlock for better connection',
                style: GoogleFonts.poppins(
                    color: Colors.grey,
                    fontSize: 14,
                    fontWeight: FontWeight.w400),
              ),
              SizedBox(height: 20),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    '\$${planPrice[planList.indexOf(item)]}',
                    style: GoogleFonts.poppins(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w600),
                  ),
                  Text(
                    ' per month',
                    style: GoogleFonts.poppins(
                        color: Colors.grey,
                        fontSize: 14,
                        fontWeight: FontWeight.w400),
                  )
                ],
              ),
              SizedBox(height: 20),
              Center(
                child: Container(
                  width: 400,
                  height: 1.0,
                  color: Color(0xffe5e5e5),
                ),
              ),
              SizedBox(height: 20),
              Text(
                'Features',
                style: GoogleFonts.poppins(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w600),
              ),
              SizedBox(height: 15),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Devices',
                    style: GoogleFonts.poppins(
                        color: Colors.grey,
                        fontSize: 14,
                        fontWeight: FontWeight.w400),
                  ),
                  Text(
                    '3 devices max',
                    style: GoogleFonts.poppins(
                        color: Colors.grey,
                        fontSize: 14,
                        fontWeight: FontWeight.w800),
                  )
                ],
              ),
              SizedBox(height: 15),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Bandwidth',
                    style: GoogleFonts.poppins(
                        color: Colors.grey,
                        fontSize: 14,
                        fontWeight: FontWeight.w400),
                  ),
                  Text(
                    'Unlimited',
                    style: GoogleFonts.poppins(
                        color: Colors.grey,
                        fontSize: 14,
                        fontWeight: FontWeight.w800),
                  )
                ],
              ),
              SizedBox(height: 15),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Daily Limit',
                    style: GoogleFonts.poppins(
                        color: Colors.grey,
                        fontSize: 14,
                        fontWeight: FontWeight.w400),
                  ),
                  Text(
                    '5hours',
                    style: GoogleFonts.poppins(
                        color: Colors.grey,
                        fontSize: 14,
                        fontWeight: FontWeight.w800),
                  )
                ],
              ),
              SizedBox(height: 30),
              Container(
                width: 280,
                height: 54,
                decoration: BoxDecoration(
                  color: Color(0xff5DBDA2),
                  border: Border.all(color: Colors.transparent),
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                ),
                child: Center(
                    child: Text(
                  'Subscribe Now',
                  style: GoogleFonts.poppins(
                      color: Colors.white,
                      fontSize: 14,
                      fontWeight: FontWeight.w800),
                )),
              )
            ],
          ),
        )))
    .toList();

class _PremiumPageState extends State<PremiumPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xff2D2D2D),
        body: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [TopPremiumWidget(), BottomNavBar(selected: 3)]),
      ),
    );
  }

  Widget TopPremiumWidget() {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 25),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Go Premium',
                  style:
                      GoogleFonts.poppins(color: Colors.white, fontSize: 27)),
              Image.asset('assets/images/Menu.png')
            ],
          ),
        ),
        SizedBox(height: 15),
        CarouselSlider(
          items: imageSliders,
          carouselController: _controller,
          options: CarouselOptions(
              autoPlay: false,
              enlargeCenterPage: true,
              aspectRatio: .85,
              viewportFraction: 0.8,
              onPageChanged: (index, reason) {
                setState(() {
                  _current = index;
                });
              }),
        ),
        const SizedBox(height: 30),
      ],
    );
  }
}
