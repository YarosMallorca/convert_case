import 'package:convert_case/convert_case.dart';

void main() {
  String myString = "Just a regular non-nullable string";

  print(ConvertCase.toLowerCase(myString)); // Output: just a regular non-nullable string
  print(ConvertCase.toUpperCase(myString)); // Output: JUST A REGULAR NON-NULLABLE STRING
  print(ConvertCase.toAlternatingCase(myString)); // Output: JuSt a rEgUlAr nOn-nUlLaBlE StRiNg
  print(ConvertCase.toInverseCase(myString)); // Output: jUST A REGULAR NON-NULLABLE STRING
  print(ConvertCase.toSentenceCase(myString)); // Output: Just a regular non-nullable string
  print(ConvertCase.toTitleCase(myString)); // Output: Just A Regular Non-nullable String
}
