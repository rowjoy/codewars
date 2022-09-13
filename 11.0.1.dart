/*
The vowel substrings in the word codewarriors are o,e,a,io. The longest of these has a length of 2. Given a lowercase string that has alphabetic characters only (both vowels and consonants) and no spaces, return the length of the longest vowel substring. Vowels are any of aeiou.

Good luck!

If you like substring Katas, please try:

Non-even substrings

Vowel-consonant lexicon

*/

void main() {
  solve("aeikfkfkeaeio");
}

int solve(String s) {
  const vowels = ['a', 'e', 'i', 'o', 'u'];
  var max = 0;
  var result = 0;

  for (var i in s.split('')) {
    print(vowels.contains(i));
    if (vowels.contains(i))
      max++;
    else if (max > result) {
      result = max;
      max = 0;
    } else
      max = 0;
  }
  print(result);
  return result;
}
