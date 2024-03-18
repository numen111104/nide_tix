import 'package:flutter/material.dart';
import 'package:nide_tix/shared/theme.dart';
import 'package:nide_tix/widgets/ticket.dart';

class TicketsPage extends StatelessWidget {
  const TicketsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My Tickets"),
        backgroundColor: purpleColor,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_outlined),
          onPressed: () => Navigator.popAndPushNamed(context, '/'),
        ),
      ),
      body: ListView(shrinkWrap: true, children: [
        CustomCard(
          title: 'Wisata Name',
          imageUrl:
              "https://img.freepik.com/free-photo/peaceful-atmosphere-early-morning-during-sunrise-pura-ulun-danu-temple-iconic-bali-lake-bratan-bali-indonesia_41775-550.jpg?size=626&ext=jpg",
          quantity: '3',
          totalPrize: 200000,
          onTap: () {},
        ),
        CustomCard(
          title: 'Wisata Name',
          imageUrl:
              "https://img.freepik.com/free-photo/peaceful-atmosphere-early-morning-during-sunrise-pura-ulun-danu-temple-iconic-bali-lake-bratan-bali-indonesia_41775-550.jpg?size=626&ext=jpg",
          quantity: '3',
          totalPrize: 200000,
          onTap: () {},
        ),
        CustomCard(
          title: 'Wisata Name',
          imageUrl:
              "https://img.freepik.com/free-photo/peaceful-atmosphere-early-morning-during-sunrise-pura-ulun-danu-temple-iconic-bali-lake-bratan-bali-indonesia_41775-550.jpg?size=626&ext=jpg",
          quantity: '3',
          totalPrize: 200000,
          onTap: () {},
        ),
        CustomCard(
          title: 'Wisata Name',
          imageUrl:
              "https://img.freepik.com/free-photo/peaceful-atmosphere-early-morning-during-sunrise-pura-ulun-danu-temple-iconic-bali-lake-bratan-bali-indonesia_41775-550.jpg?size=626&ext=jpg",
          quantity: '3',
          totalPrize: 200000,
          onTap: () {},
        ),
        CustomCard(
          title: 'Wisata Name',
          imageUrl:
              "https://img.freepik.com/free-photo/peaceful-atmosphere-early-morning-during-sunrise-pura-ulun-danu-temple-iconic-bali-lake-bratan-bali-indonesia_41775-550.jpg?size=626&ext=jpg",
          quantity: '3',
          totalPrize: 200000,
          onTap: () {},
        ),
      ]),
    );
  }
}
