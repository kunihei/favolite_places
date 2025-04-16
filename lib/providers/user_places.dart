import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:favorite_places/models/place.dart';

class UserPlacesNotifier extends StateNotifier<List<Place>> {
  UserPlacesNotifier() : super([]);

  void addPlace(String title) {
    final newPlace = Place(title: title);
    state = [
      newPlace,
      ...state,
    ];
  }
}

final usesrPlacesProvider = StateNotifierProvider<UserPlacesNotifier, List<Place>>(
  (ref) => UserPlacesNotifier(),
);
