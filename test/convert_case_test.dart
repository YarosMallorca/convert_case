import 'package:convert_case/convert_case.dart';
import 'package:test/test.dart';

void main() {
  /// To Lower Case
  test(
      "Given a 2-line string with upper and lower case letters, return string is all lowercase",
      () async {
    // Arrange
    String input =
        "jUST a RANdoM sTRInG\nAnD ANOTHER liNE. Some punctuation AS well";
    String expectedOutput =
        "just a random string\nand another line. some punctuation as well";

    // Act
    String output = ConvertCase.toLowerCase(input);

    // Assert
    expect(output, expectedOutput);
  });

  /// To Upper Case
  test(
      "Given a 2-line string with upper and lower case letters, return string is all uppercase",
      () async {
    // Arrange
    String input =
        "jUST a RANdoM sTRInG\nAnD ANOTHER liNE. Some punctuation AS well";
    String expectedOutput =
        "JUST A RANDOM STRING\nAND ANOTHER LINE. SOME PUNCTUATION AS WELL";

    // Act
    String output = ConvertCase.toUpperCase(input);

    // Assert
    expect(output, expectedOutput);
  });

  /// To Sentence Case
  test(
      "Given a string with multiple sentences and lines, return string that is in sentence case",
      () async {
    // Arrange
    String input =
        "jUST a RANdoM sTRInG. and another sentencE!\nAnD ANOTHER liNE? WOW, even some punctuation!!";
    String expectedOutput =
        "Just a random string. And another sentence!\nAnd another line? Wow, even some punctuation!!";

    // Act
    String output = ConvertCase.toSentenceCase(input);

    // Assert
    expect(output, expectedOutput);
  });

  /// To Title Case
  test(
      "Given a string with multiple sentences and lines, return string that is in title case",
      () async {
    // Arrange
    String input =
        "just A RANDOM STring. And ANOTHER Sentence!\nAnd ANOtHER linE?  How about TWO spaces??";
    String expectedOutput =
        "Just A Random String. And Another Sentence!\nAnd Another Line?  How About Two Spaces??";

    // Act
    String output = ConvertCase.toTitleCase(input);

    // Assert
    expect(output, expectedOutput);
  });

  /// To Inverse Case
  test(
      "Given a string with multiple sentences and lines, return string that is in inverse case",
      () async {
    // Arrange
    String input =
        "jUsT A randOM STring. aND ANOther SenTENCE!\nAnother LINe?  and SPECIal Characters??!!";
    String expectedOutput =
        "JuSt a RANDom stRING. And anoTHER sENtence!\naNOTHER linE?  AND speciAL cHARACTERS??!!";

    // Act
    String output = ConvertCase.toInverseCase(input);

    // Assert
    expect(output, expectedOutput);
  });

  // To Atlernating Case
  test(
      "Given a string with multiple sentences and lines, return string that is in alternating case",
      () async {
    // Arrange
    String input =
        "jUsT A rANdOM StRING. aND ANoTHER SENtENCE!\nANOTHER LINE?  double SPACe!";
    String expectedOutput =
        "JuSt a rAnDoM StRiNg. AnD AnOtHeR SeNtEnCe!\nAnOtHeR LiNe?  dOuBlE SpAcE!";

    // Act
    String output = ConvertCase.toAlternatingCase(input);

    // Assert
    expect(output, expectedOutput);
  });
}
