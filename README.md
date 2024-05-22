# Profanity Filter

Profanity Filter is a Dart package that helps you detect and censor profanity in text strings. It provides a simple API to check if a given text contains profanity and to censor profanity by replacing it with asterisks.

## Installation

To use Profanity Filter in your Dart project, add it to your `pubspec.yaml` file:

```yaml
dependencies:
  flutter_profanity_filter: ^0.0.2


```

```dart

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

```


<img src="https://i.ibb.co/prcMjkf/translation.png" width="20"> Supported languages:<br>
- English
- Spanish
