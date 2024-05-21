import 'package:flutter_test/flutter_test.dart';

import 'package:profanity_filter/profanity_filter.dart';

void main() {
  group('ProfanityFilter', () {
    test('detects profanity', () {
      final filter = ProfanityFilter();
      expect(filter.hasProfanity('This is a fuck'), isTrue);
      expect(filter.hasProfanity('This is clean'), isFalse);
    });

    test('censors profanity', () {
      final filter = ProfanityFilter();
      expect(filter.censor('This is a fuck'), 'This is a *******');
      expect(filter.censor('This is clean'), 'This is clean');
    });
  });
}
