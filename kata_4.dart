


import 'dart:math';

void main() {
rectangleRotation(2, 5);

int _n = 8;
print(sqrt(_n));

}

int rectangleRotation( int a, int b) {
  var ld = (a / sqrt(2)) / 2;
  var sd = (b / sqrt(2)) / 2;
  var rectExt = [2 * ld.floor() + 1, 2 * sd.floor() + 1];
  var rectInt = [2 * ld.floor() + (ld % 1 < 0.5 ? 0 : 2), 2 * sd.floor() + (sd % 1 < 0.5 ? 0 : 2)];
  int _result = rectExt[0] * rectExt[1] + rectInt[0] * rectInt[1];
  return _result;
}