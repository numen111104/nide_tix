import 'package:fancy_shimmer_image/fancy_shimmer_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:nide_tix/shared/theme.dart';

class TourismCard extends StatelessWidget {
  final String imageUrl;
  final String tag;
  final String name;
  final String location;
  final VoidCallback? onTap;
  const TourismCard(
      {super.key,
      required this.imageUrl,
      required this.name,
      required this.location,
      this.onTap, required this.tag});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(18),
          ),
          child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Expanded(
              flex: 1,
              child: ClipRRect(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(18),
                  bottomLeft: Radius.circular(18),
                ),
                child: Hero(
                  tag: tag,
                  child: FancyShimmerImage(
                    imageUrl: imageUrl,
                    boxFit: BoxFit.cover,
                    width: double.infinity,
                    height: 125,
                  ),
                ),
              ),
            ),
            Expanded(
                child: Padding(
              padding: const EdgeInsets.all(8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    name,
                    style: blackTextStyle.copyWith(
                      fontSize: 18,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(location, style: greyTextStyle.copyWith(fontSize: 14))
                ],
              ),
            ))
          ])),
    );
  }
}
