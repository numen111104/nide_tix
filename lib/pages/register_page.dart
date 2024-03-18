import 'package:flutter/material.dart';
import 'package:nide_tix/shared/theme.dart';
import 'package:nide_tix/widgets/buttons.dart';
import 'package:nide_tix/widgets/forms.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Sign Up"),
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
            'Join Us to Unlock\nYour Nide Tix Today',
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
                  title: 'Full Name',
                ),
                const SizedBox(height: 16),
                const CustomFormField(
                  title: 'Email Address',
                ),
                const SizedBox(height: 16),
                const CustomFormField(
                  title: 'Password',
                  obscureText: true,
                ),
                const SizedBox(height: 16),
                const CustomFormField(
                  title: 'Phone Number',
                ),
                const SizedBox(height: 30),
                CustomFilledButton(
                  title: 'Continue',
                  onPressed: () {
                    Navigator.pushNamed(context, '/');
                  },
                )
              ],
            ),
          ),
          const SizedBox(height: 15),
          CustomTextButton(
            title: 'Sign In',
            onPressed: () {
              Navigator.pushNamed(context, '/login');
            },
          ),
          const SizedBox(height: 25),
        ],
      ),
    );
  }
}
