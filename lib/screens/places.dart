import 'package:favorite_places/dummy_data/places_data.dart';
import 'package:favorite_places/screens/add_new_places.dart';
import 'package:favorite_places/widgets/places_tile.dart';
import 'package:flutter/material.dart';

class PlacesScreen extends StatelessWidget {
  const PlacesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Your Places',
          style: Theme.of(context).textTheme.titleLarge,
        ),
        backgroundColor: Theme.of(context).colorScheme.onSecondary,
        actions: [
          IconButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const AddNewPlaces(),
                ),
              );
            },
            icon: const Icon(Icons.add),
          )
        ],
      ),
      body: const PlacesTile(places: []),
    );
  }
}
