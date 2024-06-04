import 'package:favorite_places/dummy_data/places_data.dart';
import 'package:favorite_places/models/places.dart';
import 'package:flutter/material.dart';

class PlacesTile extends StatelessWidget {
  const PlacesTile({
    super.key,
    required this.places,
  });

  final List<Places> places;

  @override
  Widget build(BuildContext context) {
    if (places.isEmpty) {
      return Center(
        child: Text(
          'No Places Added Yet',
          style: Theme.of(context)
              .textTheme
              .titleMedium!
              .copyWith(color: Theme.of(context).colorScheme.onSurface),
        ),
      );
    }

    return ListView.builder(
      itemCount: places.length,
      itemBuilder: (context, index) => ListTile(
        title: Text(
          places[index].title,
          style: Theme.of(context)
              .textTheme
              .titleMedium!
              .copyWith(color: Theme.of(context).colorScheme.onSurface),
        ),
      ),
    );
  }
}
