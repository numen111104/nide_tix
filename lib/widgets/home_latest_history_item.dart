import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nide_tix/shared/methods.dart';
import 'package:nide_tix/shared/theme.dart';

class LatestHistoriesItem extends StatelessWidget {
  final String svgUrl;
  final String title;
  final String status;
  final VoidCallback? onTap;
  final double amount;
  const LatestHistoriesItem({
    super.key,
    required this.svgUrl,
    required this.title,
    required this.status,
    this.onTap,
    required this.amount,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      splashColor: blueCeklist,
      borderRadius: BorderRadius.circular(20),
      hoverColor: blueColor,
      child: Container(
        margin: const EdgeInsets.only(bottom: 20),
        child: Center(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SvgPicture.asset(
                svgUrl,
                width: 24,
              ),
              const SizedBox(
                width: 16,
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: blackTextStyle.copyWith(
                        fontWeight: semiBold,
                        fontSize: 16,
                      ),
                    ),
                    Text(
                      status,
                      style: greyTextStyle.copyWith(
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
              ),
              Text(
                formatCurrency(amount),
                style: blackTextStyle.copyWith(
                  fontWeight: semiBold,
                  fontSize: 16,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
