import 'dart:async';

import 'package:flutter/material.dart';
import 'package:nide_tix/shared/theme.dart';

class SplashScreenPage extends StatefulWidget {
  const SplashScreenPage({super.key});

  @override
  State<SplashScreenPage> createState() => _SplashScreenPageState();
}

class _SplashScreenPageState extends State<SplashScreenPage> {
  @override
  void initState() {
    super.initState();
    Timer(
      const Duration(seconds: 10),
      () {
        Navigator.pushNamedAndRemoveUntil(context, '/', (route) => false);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: darkBackgroundColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: 250,
              height: 140,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    'assets/nide_logo.png',
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Text('Nide Tix',
                style: whiteTextStyle.copyWith(
                    fontSize: 20, fontWeight: semiBold, wordSpacing: 4))
          ],
        ),
      ),
    );
  }
}
