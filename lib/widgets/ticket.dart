import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:nide_tix/shared/methods.dart';
import 'package:nide_tix/shared/theme.dart';
import 'package:qr_flutter/qr_flutter.dart';

class CustomCard extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String quantity;
  final double totalPrize;
  final VoidCallback? onTap;

  const CustomCard({
    super.key,
    required this.imageUrl,
    required this.title,
    required this.quantity,
    required this.totalPrize,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      splashColor: lightBackgroundColor,
      hoverColor: lightBackgroundColor,
      highlightColor: lightBackgroundColor,
      child: Container(
        height: 150,
        width: double.infinity,
        margin: const EdgeInsets.only(bottom: 16),
        decoration: BoxDecoration(
          image: DecorationImage(
            opacity: 70 / 100,
            image: NetworkImage(
              imageUrl,
              scale: 1,
            ),
            fit: BoxFit.cover,
          ),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Padding(
          padding:
              const EdgeInsets.only(top: 10, left: 10, bottom: 10, right: 8),
          child: Container(
            padding: const EdgeInsets.all(5),
            decoration: BoxDecoration(
              color: whiteColor.withOpacity(1 - 70 / 100),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: whiteTextStyle.copyWith(
                          color: purpleColor, fontSize: 18, fontWeight: bold),
                    ),
                    const Spacer(
                      flex: 1,
                    ),
                    Text(
                      "Quantity: $quantity",
                      style: whiteTextStyle.copyWith(
                          color: purpleColor, fontSize: 14, fontWeight: light),
                    ),
                    const Spacer(
                      flex: 1,
                    ),
                    Text(
                      "Total Price: ${formatCurrency(totalPrize)}",
                      style: whiteTextStyle.copyWith(
                          color: purpleColor, fontSize: 14, fontWeight: bold),
                    ),
                    const Spacer(
                      flex: 1,
                    ),
                  ],
                ),
                Container(
                  color: whiteColor.withOpacity(60 / 100),
                  height: double.infinity,
                  child: Center(
                    child: QrImageView(
                      data: "82eh2ue8",
                      version: QrVersions.auto,
                      gapless: false,
                      embeddedImage: const AssetImage("assets/nide_logo.png"),
                      embeddedImageStyle: const QrEmbeddedImageStyle(
                        size: Size(35, 35),
                      ),
                      size: 100,
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
