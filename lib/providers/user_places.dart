import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:favorite_places_app/models/place.dart';

class UserPlacesNotifier extends Notifier<List<Place>> {
  @override
  List<Place> build() {
    return [];
  }

  void addPlace(String title) {
    final newPlace = Place(title: title);
    state = [newPlace, ...state];
  }
}

final userPlacesProvider = NotifierProvider<UserPlacesNotifier, List<Place>>(
  UserPlacesNotifier.new,
);

// import 'package:flutter_riverpod/legacy.dart';

// class UserPlacesNotifier extends StateNotifier<List<Place>> {
//   UserPlacesNotifier() : super(const []);

//   void addPlace(String title) {
//     final newPlace = Place(title: title);
//     state = [newPlace, ...state];
//   }
// }

// final userPlacesProvider =
//     StateNotifierProvider<UserPlacesNotifier, List<Place>>(
//       (ref) => UserPlacesNotifier(),
//     );
