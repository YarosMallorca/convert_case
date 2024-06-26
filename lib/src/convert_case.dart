// Copyright (c) 2024, The Constrain project authors.
// Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by
// a BSD 2-Clause License that can be found in the LICENSE file.

/// Main Convert Case Class
///
/// All methods are static and can be called without initializing
class ConvertCase {
  /// Converts string to lower case
  ///
  /// Accepts a non-nullable string as input
  static String toLowerCase(String input) {
    return input.toLowerCase();
  }

  /// Converts string to UPPER CASE
  ///
  /// Accepts a non-nullable string as input
  static String toUpperCase(String input) {
    return input.toUpperCase();
  }

  /// Converts string to Sentence case
  ///
  /// Accepts a non-nullable string as input
  static String toSentenceCase(String input) {
    if (input.isEmpty) {
      return input;
    }

    // Split the input string into an array of lines
    List<String> lines = input.split('\n');

    // Convert each line to sentence case and join them back into a single string
    String output = lines.map((line) {
      // Split the line into an array of sentences
      List<String> sentences = line.split(RegExp(r'(?<=[.?!])\s+'));
      // Convert each sentence to sentence case and join them back into a single string
      String sentenceCaseLine = sentences.map((sentence) {
        return sentence.substring(0, 1).toUpperCase() +
            sentence.substring(1).toLowerCase();
      }).join(' ');
      return sentenceCaseLine;
    }).join('\n');

    return output;
  }

  /// Converts string to Title Case
  ///
  /// Accepts a non-nullable string as input
  static String toTitleCase(String input) {
    if (input.isEmpty) {
      return input;
    }

    // Split the input string into an array of lines
    List<String> lines = input.split('\n');

    // Convert each line to Title Case and join them back into a single string
    String output = lines.map((line) {
      // Split the line into an array of words
      List<String> words = line.split(' ');
      // Convert each word to Title Case and join them back into a single string
      String titleCaseLine = words.map((word) {
        if (word.isEmpty) {
          return word;
        }
        return word.substring(0, 1).toUpperCase() +
            word.substring(1).toLowerCase();
      }).join(' ');
      return titleCaseLine;
    }).join('\n');

    return output;
  }

  /// Converts string to iNVERSE cASE
  ///
  /// Accepts a non-nullable string as input
  static String toInverseCase(String input) {
    if (input.isEmpty) {
      return input;
    }

    // Split the input string into an array of lines
    List<String> lines = input.split('\n');

    // Convert each line to inverse case and join them back into a single string
    String output = lines.map((line) {
      // Convert each character in the line to inverse case and join them back into a single string
      String inverseCaseLine = line.split('').map((char) {
        if (char.toUpperCase() == char) {
          return char.toLowerCase();
        } else {
          return char.toUpperCase();
        }
      }).join('');
      return inverseCaseLine;
    }).join('\n');

    return output;
  }

  /// Converts string to AlTeRnAtInG CaSe
  ///
  /// Accepts a non-nullable string as input
  static String toAlternatingCase(String input) {
    if (input.isEmpty) {
      return input;
    }

    // Split the input string into an array of lines
    List<String> lines = input.split('\n');

    // Convert each line to alternating case and join them back into a single string
    String output = lines.map((line) {
      // Convert each character in the line to alternating case and join them back into a single string
      String alternatingCaseLine = line.split('').asMap().entries.map((entry) {
        int index = entry.key;
        String char = entry.value;
        if (index % 2 == 0) {
          return char.toUpperCase();
        } else {
          return char.toLowerCase();
        }
      }).join('');
      return alternatingCaseLine;
    }).join('\n');

    return output;
  }
}
