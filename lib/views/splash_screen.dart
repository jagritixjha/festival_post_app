import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  homeRoute() async {
    Future.delayed(
      const Duration(seconds: 2),
    ).then(
      (value) => Navigator.pushNamed(context, 'homeScreen'),
    );
  }

  @override
  void initState() {
    super.initState();
    homeRoute();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: 380,
            width: 400,
            child: Image.asset(
              'assets/splash2.png',
              fit: BoxFit.contain,
            ),
          ),
          // SizedBox(
          //   height: 40,
          //   width: 200,
          //   child: Image.asset(
          //     'assets/splash.gif',
          //     fit: BoxFit.contain,
          //   ),
          // ),
          Text(
            'FestiveFrame',
            style: GoogleFonts.satisfy(
              textStyle: const TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
