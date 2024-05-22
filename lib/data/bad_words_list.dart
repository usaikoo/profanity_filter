// lib/bad_words_list.dart

import 'package:flutter_profanity_filter/data/bad_words_en.dart';
import 'package:flutter_profanity_filter/data/bad_words_fr.dart';

import 'bad_words_spanish.dart';
// Import other language lists here

const List<String> defaultBadWords = [
  ...englishBadWords,
  ...spanishBadWords,
  ...frBadWords,
  // Add other languages here
];
