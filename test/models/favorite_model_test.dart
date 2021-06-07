import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_test_sample/models/favorite_model.dart';

void main() {
  group('App Provider Unit Tests', () {
    var favorites = FavoriteModel();
    test('A new item should be added', () {
      var number = 35;
      favorites.add(number);
      expect(favorites.items.contains(number), true);
    });

    test('An item should be removed', () {
      var number = 45;
      favorites.add(number);
      expect(favorites.items.contains(number), true);
      favorites.remove(number);
      expect(favorites.items.contains(number), false);
    });
  });
}
