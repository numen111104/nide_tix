import 'package:flutter/material.dart';
import 'package:nide_tix/shared/theme.dart';
import 'package:nide_tix/widgets/buttons.dart';
import 'package:nide_tix/widgets/forms.dart';

class BookingPage extends StatelessWidget {
  const BookingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Booking',
        ),
        leading: IconButton(
          icon: Icon(Icons.arrow_back_outlined),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
      body: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          children: [
            Container(
              width: 250,
              height: 140,
              margin: const EdgeInsets.only(
                top: 25,
                bottom: 25,
              ),
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    'assets/nide_logo.png',
                  ),
                ),
              ),
            ),
            Text(
              'Booking Now &\nStart Exploring',
              style: blackTextStyle.copyWith(
                fontSize: 20,
                fontWeight: semiBold,
              ),
            ),
            const SizedBox(height: 30),
            Container(
              padding: const EdgeInsets.all(22),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: whiteColor,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const CustomFormField(
                    title: 'Nama Pemesan',
                  ),
                  const SizedBox(height: 16),
                  const CustomFormField(
                    title: 'Nomor Telepon',
                    obscureText: false,
                  ),
                  const SizedBox(height: 16),
                  const CustomFormField(
                    title: 'Nama Wisata',
                    obscureText: false,
                  ),
                  const SizedBox(height: 16),
                  const CustomFormField(
                    title: 'Quantity',
                    obscureText: false,
                  ),
                  const SizedBox(height: 8),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      'Forgot Password',
                      style: blueTextStyle,
                    ),
                  ),
                  const SizedBox(height: 30),
                  CustomFilledButton(
                    title: 'Create Ticket',
                    onPressed: () {
                      Navigator.pushNamed(context, '/tickets');
                    },
                  )
                ],
              ),
            ),
          ]),
    );
  }
}
