import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:nide_tix/shared/theme.dart';
import 'package:nide_tix/widgets/scrool_image.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: purpleColor,
          elevation: 0,
          title: Text(
            'Nide Tix',
          ),
        ),
        body: SafeArea(
            child: ListView(
          children: [
            Container(
              height: 200,
              width: double.infinity,
              child: CarouselSlider(
                items: [
                  Image.network(
                    "https://img.freepik.com/free-photo/peaceful-atmosphere-early-morning-during-sunrise-pura-ulun-danu-temple-iconic-bali-lake-bratan-bali-indonesia_41775-550.jpg?size=626&ext=jpg",
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                  Image.network(
                    "https://img.freepik.com/free-photo/peaceful-atmosphere-early-morning-during-sunrise-pura-ulun-danu-temple-iconic-bali-lake-bratan-bali-indonesia_41775-550.jpg?size=626&ext=jpg",
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                  Image.network(
                    "https://img.freepik.com/free-photo/peaceful-atmosphere-early-morning-during-sunrise-pura-ulun-danu-temple-iconic-bali-lake-bratan-bali-indonesia_41775-550.jpg?size=626&ext=jpg",
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ],
                options: CarouselOptions(
                  autoPlay: true,
                  enableInfiniteScroll: true,
                  viewportFraction: 1,
                  height: 200,
                ),
              ),
            ),
            SizedBox(
              height: 50,
            )
          ],
        )));
  }
}
