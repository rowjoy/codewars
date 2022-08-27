/*
  Take 2 strings s1 and s2 including only letters from a to z. Return a new sorted string, the longest possible, containing distinct letters - each taken only once - coming from s1 or s2.

  Examples:
  a = "xyaabbbccccdefww"
  b = "xxxxyyyyabklmopq"
  longest(a, b) -> "abcdefklmopqwxy"

  a = "abcdefghijklmnopqrstuvwxyz"
  longest(a, a) -> "abcdefghijklmnopqrstuvwxyz"

 */



void main() {
  longest('xyaabbbccccdefww', 'xxxxyyyyabklmopq');
}

String longest(String a, String b) {
  var strings = (a + b).split('');
  strings.sort();

  return strings.toSet().join();
}

String longest1(String a, String b) {
    if (a == '' && b == '') {
      return '';
    } else {
      List<String> listAB = ('$a$b').split('');

      List<String> listStr = [listAB[0]];

      for (int i = 1; i < listAB.length; i++) {
        bool isIn = false;
        for (int j = 0; j < listStr.length; j++) {
          if (listAB[i] == listStr[j]) {
            isIn = true;
          }
        }
        isIn == false ? listStr.add(listAB[i]) : null;
      }

      listStr.sort();

      return listStr.join('');
    }
  }