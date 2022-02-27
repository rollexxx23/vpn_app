import 'package:flutter/material.dart';
import 'package:vpn_app/screens/location_page.dart';
import 'package:vpn_app/screens/main_page.dart';

import '../screens/premium_page.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({required this.selected, key}) : super(key: key);
  final int selected;
  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff393939),
      width: MediaQuery.of(context).size.width,
      height: 70,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 40.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            (widget.selected == 1)
                ? Image.asset('assets/images/Home.png')
                : InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const HomePage()));
                    },
                    child: Image.asset('assets/images/HomeInactive.png')),
            (widget.selected != 2)
                ? InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const LocationPage()));
                    },
                    child: Image.asset('assets/images/Locations.png'))
                : Image.asset('assets/images/LocationsActive.png'),
            (widget.selected != 3)
                ? InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const PremiumPage()));
                    },
                    child: Image.asset('assets/images/Premium.png'))
                : Image.asset('assets/images/PremiumActive.png'),
            Image.asset('assets/images/Account.png'),
          ],
        ),
      ),
    );
  }
}
