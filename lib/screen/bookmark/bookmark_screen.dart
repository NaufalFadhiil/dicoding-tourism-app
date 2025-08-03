import 'package:flutter/material.dart';
import 'package:tourism_app/models/tourism.dart';
import 'package:tourism_app/screen/tourism_card_widget.dart';
import 'package:tourism_app/static/navigation_route.dart';

class BookmarkScreen extends StatelessWidget {
  const BookmarkScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Bookmark List')),
      body: ListView.builder(
        itemCount: bookMarkTourismList.length,
        itemBuilder: (context, index) {
          final tourism = bookMarkTourismList[index];

          return TourismCard(
            tourism: tourism,
            onTap: () {
              Navigator.pushNamed(
                context,
                NavigationRoute.detailRoute.name,
                arguments: tourism,
              );
            },
          );
        },
      ),
    );
  }
}
