import 'package:flutter/material.dart';
import 'package:riverpod/riverpod.dart';
import 'package:favorite_places/models/places.dart';

class UserPlacesNotifier extends StateNotifier<List<Places>> {
  UserPlacesNotifier() : super(const []);

  void addPlace(String places) {
    final newPlace = Places(title: places);
    state = [newPlace, ...state];
  }
}

final userPLaceProvider = StateNotifierProvider(
  (ref) => UserPlacesNotifier(),
);
