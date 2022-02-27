import 'package:flutter/material.dart';
import 'package:vpn_app/screens/home_page.dart';
import 'package:vpn_app/widgets/bottom_nav_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff2D2D2D),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [HomePageTop(), BottomNavBar(selected: 1)],
        ),
      ),
    );
  }
}
