// example/main.dart
import 'package:flutter_profanity_filter/profanity_filter.dart';

void main() {
  final filter = ProfanityFilter();

  // Check if a text contains profanity
  print(filter.hasProfanity('This is a fuck')); // true
  print(filter.hasProfanity('This is clean')); // false

  // Censor profanity in a text
  print(filter.censor('This is a fuck')); // 'This is a *******'
  print(filter.censor('This is clean')); // 'This is clean'
}
