/*

Write a function that takes a string of braces, and determines if the order of the braces is valid. It should return true if the string is valid, and false if it's invalid.

This Kata is similar to the Valid Parentheses Kata, but introduces new characters: brackets [], and curly braces {}. Thanks to @arnedag for the idea!

All input strings will be nonempty, and will only consist of parentheses, brackets and curly braces: ()[]{}.

What is considered Valid?
A string of braces is considered valid if all braces are matched with the correct brace.

Examples
"(){}[]"   =>  True
"([{}])"   =>  True
"(}"       =>  False
"[(])"     =>  False
"[({})](]" =>  False


 */

//https://www.codewars.com/kata/5277c8a221e209d3f6000b56/train/dart

import 'dart:async';

void main() {
  validBraces("([]{})");
  checkBraces("([]{})");
  
}

bool validBraces(String braces) {
  String prev = "";
  while(braces.length != prev.length){
      prev = braces;
      braces = braces.replaceAll("()", "").replaceAll("{}", "").replaceAll("[]", "");
  }
  print(braces.length == 0);
  return braces.length == 0;
}


bool checkBraces (String braces){
String pre = "";
do{
  pre = braces;
  braces = braces.replaceAll("()", "").replaceAll("{}", "").replaceAll("[]", "");
}while(pre.length != braces.length);
print(braces.length == 0);
  return false;
}
