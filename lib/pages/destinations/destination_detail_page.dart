import 'package:flutter/material.dart';
import 'package:nide_tix/models/destinasi.dart';
import 'package:nide_tix/widgets/buttons.dart';
import 'package:nide_tix/widgets/destinations_details_items.dart';

class DestinationDetailPage extends StatelessWidget {
  const DestinationDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    final destination = ModalRoute.of(context)!.settings.arguments as Datum;
    return Scaffold(
      floatingActionButton: Align(
        alignment: const Alignment(0.39, 1.0),
        child: CustomFilledButton(
          title: "Booking Now",
          width: 300,
          onPressed: () => Navigator.of(context).pushNamed('/booking'),
        ),
      ),
      body: SingleChildScrollView(
        child: DetailsPageItems(
          key: ValueKey(destination.id),
          tag: destination.id.toString(),
          name: destination.name,
          openDay: destination.openDays,
          openTime: destination.openTime,
          price: destination.ticketPrice.toString(),
          description: destination.description,
          imageAsset: destination.imageAsset,
          urlImages: destination.imageUrls,
        ),
      ),
    );
  }
}
