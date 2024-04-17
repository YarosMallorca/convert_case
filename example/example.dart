import 'package:convert_case/convert_case.dart';

void main() {
  String myString = "Just a regular non-nullable string";

  print(ConvertCase.toLowerCase(myString));
  print(ConvertCase.toUpperCase(myString));
  print(ConvertCase.toAlternatingCase(myString));
  print(ConvertCase.toInverseCase(myString));
  print(ConvertCase.toSentenceCase(myString));
  print(ConvertCase.toTitleCase(myString));
}
