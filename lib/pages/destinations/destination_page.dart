import 'package:flutter/material.dart';
import 'package:nide_tix/shared/const.dart';
import 'package:nide_tix/widgets/destinations_card.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:nide_tix/models/destinasi.dart'; // Import model yang telah diberikan

class DestinationPage extends StatefulWidget {
  const DestinationPage({super.key});

  @override
  State<DestinationPage> createState() => _DestinationPageState();
}

class _DestinationPageState extends State<DestinationPage> {
  late Future<DestinationsModel> futureDestinations;

  @override
  void initState() {
    super.initState();
    futureDestinations = fetchDestinations();
  }

  Future<DestinationsModel> fetchDestinations() async {
    final response = await http.get(Uri.parse('${baseUrl}destinasi'));
    if (response.statusCode == 200) {
      return DestinationsModel.fromMap(jsonDecode(response.body));
    } else {
      throw Exception('Failed to load destinations');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Destinations'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back_outlined),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
      body: FutureBuilder<DestinationsModel>(
        future: futureDestinations,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          } else {
            return ListView.builder(
              itemCount: snapshot.data!.data.length,
              itemBuilder: (context, index) {
                final destination = snapshot.data!.data[index];
                return TourismCard(
                  key: ValueKey(destination.id),
                  imageUrl: !destination.imageAsset.startsWith(apiUrl)
                      ? destination.imageAsset
                      : destination.imageAsset = destination.imageAsset
                          .replaceFirst(apiUrl, 'http://10.0.2.2:8000'),
                  name: destination.name,
                  location: destination.location,
                  onTap: () {
                    Navigator.pushNamed(context, '/destination_detail',
                        arguments: destination);
                  },
                  tag: destination.id.toString(),
                );
              },
            );
          }
        },
      ),
    );
  }
}
