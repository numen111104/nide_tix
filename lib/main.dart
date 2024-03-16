import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nide_tix/pages/home_page.dart';
import 'package:nide_tix/shared/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Nide Tix",
      theme: ThemeData(
        scaffoldBackgroundColor: lightBackgroundColor,
        textTheme: GoogleFonts.poppinsTextTheme(),
        appBarTheme: AppBarTheme(
            backgroundColor: lightBackgroundColor,
            elevation: 0,
            titleTextStyle:
                whiteTextStyle.copyWith(fontSize: 20, fontWeight: medium)),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: purpleColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(17),
            ),
          ),
        ),
      ),
      initialRoute: "/",
      routes: {
        '/': (context) => const HomePage(),
      },
    );
  }
}
