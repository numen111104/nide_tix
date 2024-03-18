import 'package:fancy_shimmer_image/fancy_shimmer_image.dart';
import 'package:flutter/material.dart';
import 'package:nide_tix/shared/theme.dart';

class DetailsPageItems extends StatelessWidget {
  final String tag;
  final String name;
  final String imageAsset;
  final String openDay;
  final String openTime;
  final String price;
  final String description;
  final List<String> urlImages;
  const DetailsPageItems({super.key, required this.tag, required this.name, required this.openDay, required this.openTime, required this.price, required this.description, required this.urlImages, required this.imageAsset});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Stack(
          children: [
            Hero(
              tag: tag,
              child: FancyShimmerImage(
                imageUrl:
                    imageAsset,
                boxFit: BoxFit.cover,
                width: double.infinity,
              ),
            ),
            SafeArea(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CircleAvatar(
                      backgroundColor: purpleColor,
                      child: IconButton(
                          onPressed: () => Navigator.pop(context),
                          icon: const Icon(
                            Icons.arrow_back,
                            color: Colors.white,
                          )),
                    ),
                    const FavoriteButton()
                  ],
                ),
              ),
            ),
          ],
        ),
        Container(
          margin: const EdgeInsets.only(top: 20.0),
          child: Text(
            name,
            textAlign: TextAlign.center,
            style: blackTextStyle.copyWith(
              fontSize: 28,
              fontWeight: semiBold,
            ),
          ),
        ),
        Container(
          margin: const EdgeInsets.symmetric(vertical: 16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Column(
                children: <Widget>[
                  const Icon(Icons.calendar_today),
                  const SizedBox(height: 8.0),
                  Text(
                    openDay,
                    style: blackTextStyle,
                  ),
                ],
              ),
              Column(
                children: <Widget>[
                  const Icon(Icons.access_time),
                  const SizedBox(height: 8.0),
                  Text(
                    openTime,
                    style: blackTextStyle,
                  )
                ],
              ),
              Column(
                children: <Widget>[
                  const Icon(Icons.monetization_on),
                  const SizedBox(height: 8.0),
                  Text(
                    price,
                    style: blackTextStyle,
                  ),
                ],
              )
            ],
          ),
        ),
        Container(
          margin: const EdgeInsets.symmetric(vertical: 10),
          padding: const EdgeInsets.all(16.0),
          child: Text(
            description,
            textAlign: TextAlign.justify,
            style: const TextStyle(
              fontSize: 16.0,
            ),
          ),
        ),
        SizedBox(
          height: 170,
          width: double.infinity,
          child: ListView(
            scrollDirection: Axis.horizontal,
            shrinkWrap: true,
            children: urlImages.map((e) {
              return Padding( 
                padding: const EdgeInsets.all(4.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: FancyShimmerImage(
                    imageUrl:
                       e,
                    boxFit: BoxFit.cover,
                  ),
                ),
              );
            }).toList(),
          ),
        ),
        const SizedBox(
          height: 16.0,
        ),
      ],
    );
  }
}

class FavoriteButton extends StatefulWidget {
  const FavoriteButton({super.key});

  @override
  State<FavoriteButton> createState() => _FavoriteButtonState();
}

class _FavoriteButtonState extends State<FavoriteButton> {
  bool _isFavorite = false;
  @override
  Widget build(BuildContext context) {
    return IconButton(
        onPressed: () {
          setState(() {
            _isFavorite = !_isFavorite;
          });
        },
        icon: Icon(
          _isFavorite ? Icons.favorite : Icons.favorite_border,
          color: Colors.red,
        ));
  }
}

