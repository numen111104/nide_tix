import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nide_tix/pages/destinations/destination_booking_page.dart';
import 'package:nide_tix/pages/destinations/destination_detail_page.dart';
import 'package:nide_tix/pages/destinations/destination_page.dart';
import 'package:nide_tix/pages/home_page.dart';
import 'package:nide_tix/pages/login_page.dart';
import 'package:nide_tix/pages/register_page.dart';
import 'package:nide_tix/pages/splash_screen.dart';
import 'package:nide_tix/pages/ticket_pages.dart';
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
              iconTheme: IconThemeData(color: whiteColor),
              backgroundColor: purpleColor,
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
          splashColor: lightBackgroundColor,
          hoverColor: lightBackgroundColor,
          highlightColor: greyColor,
          textSelectionTheme: TextSelectionThemeData(
            cursorColor: greyColor,
          ),
          inputDecorationTheme: InputDecorationTheme(
              filled: true,
              fillColor: whiteColor,
              focusColor: purpleColor,
              hoverColor: greenColor,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(17),
                borderSide: BorderSide.none,
              ))),
      initialRoute: "/splash",
      routes: {
        '/splash': (context) => const SplashScreenPage(),
        '/': (context) => const HomePage(),
        '/login': (context) => const LoginPage(),
        '/register': (context) => const RegisterPage(),
        '/tickets': (context) => const TicketsPage(),
        '/destinations': (context) => const DestinationPage(),
        '/destination_detail': (context) => const DestinationDetailPage(),
        '/booking': (context) => const BookingPage(),
      },
    );
  }
}
