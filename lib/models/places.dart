import 'package:uuid/uuid.dart';
import 'dart:io';

const uuid = Uuid();

class PlaceLocation {
  const PlaceLocation({
    required this.latitude,
    required this.longitutde,
    required this.address,
  });

  final double latitude;
  final double longitutde;
  final String address;
}

class Places {
  Places({
    required this.title,
    required this.image,
    // required this.location,
  }) : id = uuid.v4();
  final String id;
  final String title;
  final File image;
  // final PlaceLocation location;
}
