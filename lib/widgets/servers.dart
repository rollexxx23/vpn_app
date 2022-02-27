import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:vpn_app/widgets/signal_strength.dart';

class Server extends StatelessWidget {
  const Server(
      {required this.img, required this.name, required this.strength, Key? key})
      : super(key: key);
  final String img;
  final String name;
  final int strength;
  @override
  Widget build(BuildContext context) {
    String imgUrl = "assets/images/" + img + ".png";
    return Container(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Image.asset(imgUrl),
                  SizedBox(width: 15),
                  Text(name,
                      style: GoogleFonts.poppins(
                          color: Colors.white, fontSize: 17))
                ],
              ),
              Row(
                children: [
                  SingalStrength(strength: strength),
                  SizedBox(width: 15),
                  Text('70ms',
                      style: GoogleFonts.poppins(
                          color: Colors.white,
                          fontSize: 13,
                          fontWeight: FontWeight.w400))
                ],
              ),
            ],
          ),
          SizedBox(height: 15),
          Container(
            width: MediaQuery.of(context).size.width - 50,
            height: 1.0,
            color: Color(0xffe5e5e5),
          ),
          SizedBox(height: 15),
        ],
      ),
    );
  }
}
