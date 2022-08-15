/* Complete the function which converts hex number (given as a string) to a decimal number. */


/* 
  final decimalNumber = 158;
  final hexaNumber = decimalNumber.toRadixString(16);
  print(decimalNumber.runtimeType);
  print(hexaNumber);
  final fiveDigitHexaNumber = hexaNumber.padLeft(5, '0');
  print(fiveDigitHexaNumber);

  int decimalNumber1 = int.parse('0009e', radix: 16);
  print(decimalNumber1);
*/
void main() {

  final decimalNumber = 10;
  final hexaNumber = decimalNumber.toRadixString(16);
  print(decimalNumber.runtimeType);
  print(hexaNumber);

  final decimalMunber1 = int.parse(hexaNumber , radix: 16);
  print(decimalMunber1);
  
}