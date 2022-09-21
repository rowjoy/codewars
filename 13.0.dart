/*

John wants to decorate the walls of a room with wallpaper. He wants a fool-proof method for getting it right.

John knows that the rectangular room has a length of l meters, a width of w meters, a height of h meters. The standard width of the rolls he wants to buy is 52 centimeters. The length of a roll is 10 meters. He bears in mind however, that it’s best to have an extra length of wallpaper handy in case of mistakes or miscalculations so he wants to buy a length 15% greater than the one he needs.

Last time he did these calculations he got a headache, so could you help John?

Task
Your function wallpaper(l, w, h) should return as a plain English word in lower case the number of rolls he must buy.

Example:
wallpaper(4.0, 3.5, 3.0) should return "ten"

wallpaper(0.0, 3.5, 3.0) should return "zero"

Notes:
all rolls (even with incomplete width) are put edge to edge

0 <= l, w, h (floating numbers); it can happens that w * h * l is zero

the integer r (number of rolls) will always be less or equal to 20

FORTH: the number of rolls will be a positive or null integer (not a plain English word; this number can be greater than 20)

In Javascript English numbers are preloaded and can be accessed as:

numbers = ["zero", "one", "two", "three", "four", "five", "six", "seven", "eight", "nine", "ten", "eleven", "twelve","thirteen", "fourteen", "fifteen", "sixteen", "seventeen", "eighteen", "nineteen", "twenty"]
For other languages it is not preloaded but you can use the above one if you need it.


*/


void main(List<String> args) {
  wallpaper(0.0, 3.0, 2.0);
}

String wallpaper(double l, double w, double h) {
  final numbers = ["zero", "one", "two", "three", "four", "five", "six", "seven", "eight", "nine", "ten", "eleven", "twelve","thirteen", "fourteen", "fifteen", "sixteen", "seventeen", "eighteen", "nineteen", "twenty"];
  
  if (l == 0 || w == 0 || h == 0) return numbers[0];
  
  final areaPerRoll = 0.52 * 10;
  final totalArea = (2 * h * l) + (2 * h * w);
  final requiredRollCount = (totalArea * 1.15 / areaPerRoll).ceil();
  return numbers[requiredRollCount];
}


String wallpaper1(double l, double w, double h) {
  final numbers = ["zero", "one", "two", "three", "four", "five", "six", "seven", "eight", "nine", "ten", "eleven", "twelve","thirteen", "fourteen", "fifteen", "sixteen", "seventeen", "eighteen", "nineteen", "twenty"];
  return numbers[(2 * (l+w) * h / 5.2 * 1.15).ceil()];
}


const numbers = ["zero", "one", "two", "three", "four", "five", "six", "seven", "eight", "nine", "ten", "eleven", "twelve","thirteen", "fourteen", "fifteen", "sixteen", "seventeen", "eighteen", "nineteen", "twenty"];

String wallpaper3(double l, double w, double h) {
  double totalToBuy;
  if (l * w * h == 0.0) {
    totalToBuy = 0.0;
  } else {
    totalToBuy = 2 * h * (l + w) * 1.15;
  }
  int rolls = (totalToBuy / (0.52 * 10)).ceil();
  return numbers[rolls];
}