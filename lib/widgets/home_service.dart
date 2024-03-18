import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nide_tix/shared/theme.dart';

class HomeServiceItem extends StatelessWidget {
  final String imageUrl;
  final String title;
  final VoidCallback? onTap;
  const HomeServiceItem(
      {super.key, required this.imageUrl, required this.title, this.onTap});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        InkWell(
          onTap: onTap,
          splashColor: lightBackgroundColor,
          hoverColor: lightBackgroundColor,
          highlightColor: lightBackgroundColor,
          focusColor: lightBackgroundColor,
          child: Container(
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: whiteColor,
              boxShadow: [
                BoxShadow(
                  color: blackColor.withOpacity(0.1),
                  blurRadius: 2,
                  offset: const Offset(0, 2),
                )
              ],
            ),
            child: Center(
              child: SvgPicture.asset(
                imageUrl,
                width: 24,
              ),
            ),
          ),
        ),
        const SizedBox(
          height: 8,
        ),
        Text(
          title,
          style: blackTextStyle.copyWith(fontWeight: medium, fontSize: 12),
        )
      ],
    );
  }
}
