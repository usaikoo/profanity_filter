library profanity_filter;
import 'package:profanity_filter/data/bad_words_list.dart';

class ProfanityFilter {
  final List<String> _badWords;

  ProfanityFilter({List<String>? customBadWords})
      : _badWords = customBadWords ?? _defaultBadWords;

  static const List<String> _defaultBadWords = defaultBadWords;

  bool hasProfanity(String text) {
    for (var word in _badWords) {
      if (text.toLowerCase().contains(word)) {
        return true;
      }
    }
    return false;
  }

  String censor(String text) {
    var censoredText = text;
    for (var word in _badWords) {
      var regex = RegExp(word, caseSensitive: false);
      if (regex.hasMatch(text)) {
        // Replace each bad word with 7 asterisks
        censoredText = censoredText.replaceAll(regex, '*******');
      }
    }
    return censoredText;
  }
}
