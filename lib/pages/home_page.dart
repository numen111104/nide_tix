import 'dart:convert';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:fancy_shimmer_image/fancy_shimmer_image.dart';
import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:nide_tix/models/home_carousel_images.dart';
import 'package:nide_tix/shared/const.dart';
import 'package:nide_tix/shared/theme.dart';
import 'package:nide_tix/widgets/home_latest_history_item.dart';
import 'package:nide_tix/widgets/home_service.dart';
import 'package:http/http.dart' as http;

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late Future<HomeImageAssets> futureHomeImages;

  @override
  void initState() {
    super.initState();
    futureHomeImages = fetchImagesHome();
  }

  Future<HomeImageAssets> fetchImagesHome() async {
    final response = await http.get(Uri.parse('${baseUrl}home-images'));
    if (response.statusCode == 200) {
      Map<String, dynamic> json = jsonDecode(response.body);
      return HomeImageAssets.fromMap(json);
    } else {
      throw Exception('Failed to load destinations');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 75,
        backgroundColor: purpleColor,
        automaticallyImplyLeading: false,
        elevation: 0,
        title: const Text(
          'Nide Tix',
        ),
        actions: [
          IconButton(
            color: whiteColor,
            icon: const Icon(
              IonIcons.person_add,
              weight: 10,
            ),
            onPressed: () {
              Navigator.of(context).pushNamed("/login");
            },
          )
        ],
      ),
      body: FutureBuilder<HomeImageAssets>(
          future: futureHomeImages,
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return Center(child: CircularProgressIndicator());
            } else if (snapshot.hasError) {
              return Center(child: Text('Error: ${snapshot.error}'));
            } else {
              return SafeArea(
                child: ListView.builder(
                  itemCount: 1,
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        SizedBox(
                          height: 200,
                          width: double.infinity,
                          child: CarouselSlider(
                            items: snapshot.data!.data.map((imageUrl) {
                              return FancyShimmerImage(
                                imageUrl: imageUrl,
                                width: double.infinity,
                                boxFit: BoxFit.cover,
                              );
                            }).toList(),
                            options: CarouselOptions(
                              autoPlay: true,
                              enableInfiniteScroll: true,
                              viewportFraction: 1,
                              height: 200,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 24),
                          child: Column(
                            children: [
                              buildService(context),
                              buildHistory(),
                            ],
                          ),
                        )
                      ],
                    );
                  },
                ),
              );
            }
          }),
    );
  }

  Widget buildService(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 26),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Services",
            style: blackTextStyle.copyWith(
              fontSize: 16,
              fontWeight: semiBold,
            ),
          ),
          const SizedBox(height: 14),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              HomeServiceItem(
                  imageUrl: 'assets/ticket.svg',
                  title: 'Tickets',
                  onTap: () {
                    Navigator.pushNamed(context, '/tickets');
                  }),
              HomeServiceItem(
                  imageUrl: 'assets/destinasi.svg',
                  title: 'Destinations',
                  onTap: () {
                    Navigator.pushNamed(context, '/destinations');
                  }),
              HomeServiceItem(
                  imageUrl: 'assets/qr_code.svg',
                  title: 'Qr Code',
                  onTap: () {}),
            ],
          )
        ],
      ),
    );
  }

  Widget buildHistory() => Container(
        margin: const EdgeInsets.only(
          top: 26,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Latest Histories",
              style: blackTextStyle.copyWith(
                fontSize: 16,
                fontWeight: semiBold,
              ),
            ),
            const SizedBox(height: 14),
            Container(
              width: double.infinity,
              height: 350,
              padding: const EdgeInsets.all(24),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: whiteColor,
              ),
              child: ListView(
                children: [
                  LatestHistoriesItem(
                    svgUrl: 'assets/ticket.svg',
                    title: "Broga",
                    status: "Success",
                    amount: 60000,
                    onTap: () {},
                  ),
                  LatestHistoriesItem(
                    svgUrl: 'assets/ticket.svg',
                    title: "Broga",
                    status: "Success",
                    amount: 60000,
                    onTap: () {},
                  ),
                  LatestHistoriesItem(
                    svgUrl: 'assets/ticket.svg',
                    title: "Broga",
                    status: "Success",
                    amount: 60000,
                    onTap: () {},
                  ),
                  LatestHistoriesItem(
                    svgUrl: 'assets/ticket.svg',
                    title: "Broga",
                    status: "Success",
                    amount: 60000,
                    onTap: () {},
                  ),
                  LatestHistoriesItem(
                    svgUrl: 'assets/ticket.svg',
                    title: "Broga",
                    status: "Success",
                    amount: 60000,
                    onTap: () {},
                  ),
                  LatestHistoriesItem(
                    svgUrl: 'assets/ticket.svg',
                    title: "Broga",
                    status: "Success",
                    amount: 60000,
                    onTap: () {},
                  ),
                ],
              ),
            ),
            const SizedBox(height: 24),
          ],
        ),
      );
}
