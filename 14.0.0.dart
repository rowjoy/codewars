/*

  Check to see if a string has the same amount of 'x's and 'o's. The method must return a boolean and be case insensitive. The string can contain any char.

  Examples input/output:

  XO("ooxx") => true
  XO("xooxx") => false
  XO("ooxXm") => true
  XO("zpzpzpp") => true // when no 'x' and 'o' is present should return true
  XO("zzoo") => false
 */

void main() {
  XO("xxoo");
}
bool XO(str) {
  bool _x;
  var _a = RegExp("x").allMatches(str.toString().toLowerCase()).length;
  var _b = RegExp("o").allMatches(str.toString().toLowerCase()).length;
  if(_a == _b){
    _x = true;
  }else{
    _x = false;
  }
  return _x;
}


bool XO1(str) {
  var s = str.toLowerCase();
  return 'x'.allMatches(s).length == 'o'.allMatches(s).length;
}


bool XO12(String assertedString) {
  var letters = Map();

  assertedString.toLowerCase().split('').forEach((character) {
    letters[character] ??= 0;
    letters[character]++;
  });
  
  return letters["x"] == letters["o"];
}